#include "process.h"
#include <alcommon/alproxy.h>
#include <iostream>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "qisr.h"
#include "msp_cmn.h"
#include "msp_errors.h"
#include "speech_recognizer.h"

#define FRAME_LEN	640
#define	BUFFER_SIZE	4096

ALSoundProcessing::ALSoundProcessing(boost::shared_ptr<ALBroker> pBroker,
                                     std::string pName)
  : ALSoundExtractor(pBroker, pName)
{
  setModuleDescription("This module processes the data collected by the "
                       "microphones and output in the ALMemory the RMS power "
                       "of each of the four channels.");
  functionName("startSession", getName(), "to start the asr session");
  BIND_METHOD(ALSoundProcessing::startSession);
	functionName("stopSession", getName(), "to stop the asr session");
  BIND_METHOD(ALSoundProcessing::stopSession);
  functionName("getStatus", getName(), "to get the status");
  BIND_METHOD(ALSoundProcessing::getStatus);
  functionName("getResult", getName(), "to get the asr result");
  BIND_METHOD(ALSoundProcessing::getResult);
}

void ALSoundProcessing::init()
{

  // Do not call the function setClientPreferences in your constructor!
  // setClientPreferences : can be called after its construction!
  audioDevice->callVoid("setClientPreferences",
                        getName(),                //Name of this module
                        16000,                    //48000 Hz requested
                        (int)FRONTCHANNEL,         //4 Channels requested
                        1                         //Deinterleaving requested
                        );
#ifdef SOUNDPROCESSING_IS_REMOTE
  qi::Application::atStop(boost::bind(&ALSoundProcessing::stopDetection, this));
#endif

	// std::cout << getBrokerName() << '\n';

  const char* login_params = "appid = 3bae7be3, work_dir = .";
  auto ret = MSPLogin(NULL, NULL, login_params);
	if (MSP_SUCCESS != ret)	{
		printf("MSPLogin failed , Error code %d.\n",ret);
	  MSPLogout();
	}

  startDetection();
}

ALSoundProcessing::~ALSoundProcessing()
{
  MSPLogout();
  stopDetection();
}


/// Description: The name of this method should not be modified as this
/// method is automatically called by the AudioDevice Module.
void ALSoundProcessing::process(const int & nbOfChannels,
                                const int & nbOfSamplesByChannel,
                                const AL_SOUND_FORMAT * buffer,
                                const ALValue & timeStamp)
{
	if (sessionStatus && rslt.length() == 0)
  {
		std::cout << "nbOfChannels: " << nbOfChannels << std::endl;
		std::cout << "nbOfSamplesByChannel: " << nbOfSamplesByChannel << std::endl;
  	writeAudioData(nbOfSamplesByChannel * sizeof(AL_SOUND_FORMAT), buffer);
	}
}

std::string ALSoundProcessing::getResult()
{
	int ret = 0;
  std::cout << "rslt returned!" << std::endl;
	while(MSP_REC_STATUS_COMPLETE != rslt_status )
  	{
      std::cout << "result getting! " << std::endl;
      rec_result = QISRGetResult( session_id, &rslt_status, 5000, &ret );
      if( MSP_SUCCESS  != ret )
      {
        printf( "QISRGetResult failed, error code is: %d", ret );
        break;
      }
      if( NULL != rec_result )
      {
      // 用户可以用其他的方式保存识别结果
        strcat( rslt_str, rec_result );
      }
      // sleep 一下很有必要，防止MSC 端无缓存的识别结果时浪费CPU 资源
      // sleep( 0.2 );
  	}

  printf("\nrslt_str: %s\n", rslt_str);
  rslt = static_cast<std::string>(rslt_str);
  std::cout << "rslt: " << rslt << std::endl;
  auto text = rslt;
  rslt.clear();
	memset(rslt_str, '\0', sizeof rslt_str);
  return text;
}

void ALSoundProcessing::startSession()
{
	int				errcode = MSP_SUCCESS;
  const char* session_begin_params =
		"sub = iat, domain = iat, language = zh_cn, "
		"accent = mandarin, sample_rate = 16000, "
		"result_type = plain, result_encoding = utf8";


	session_id = QISRSessionBegin(NULL, session_begin_params, &errcode); //��д����Ҫ�﷨����һ������ΪNULL
	if (MSP_SUCCESS != errcode)
	{
		printf("\nQISRSessionBegin failed! error code:%d\n", errcode);
    sessionStatus = false;
	}
  else
  {
    std::cout << "Session begun!" << std::endl;
    sessionStatus = true;
  }
}

void ALSoundProcessing::stopSession()
{
  int ret = QISRSessionEnd ( session_id, "normal end" );
  if( MSP_SUCCESS  != ret )
  {
      printf( "QISRSessionEnd failed, error code is: %d", ret );
  }
  else
  {
    std::cout << "session stopped!" << std::endl;
    sessionStatus = false;
  }
}

int ALSoundProcessing::getStatus()
{
  return  rslt_status;
}

int ALSoundProcessing::writeAudioData(const int & nbOfSamplesByChannel,
                      const AL_SOUND_FORMAT * buffer)
{
    int audio_status = 2;
    int ep_stat = 0, rec_stat = 0, ret = 0;

		std::cout << "audio writing!" << std::endl;
		rslt_status = QISRAudioWrite(session_id, buffer, nbOfSamplesByChannel, audio_status, &ep_stat, &rec_stat);
		// std::cout << "session id: " << static_cast<std::string>(session_id) << std::endl;
		if( MSP_SUCCESS  != rslt_status )
		{
			printf( "QISRAudioWrite failed, error code is: %d", rslt_status );
			return rslt_status;
		}
		else if(MSP_EP_AFTER_SPEECH == ep_stat ) // 检测到音频后端点，停止写入音频
		{
			printf( "end point of speech has been detected!" );
			sessionStatus = false;
			return rslt_status;
		}

		audio_status = MSP_AUDIO_SAMPLE_CONTINUE;

		if (MSP_REC_STATUS_SUCCESS == rslt_status)
		{
			rec_result = QISRGetResult( session_id, &rslt_status, 5000, &ret );
			if( NULL != rec_result )
			{
			// 用户可以用其他的方式保存识别结果
				strcat( rslt_str, rec_result );
			}
		}
		return rslt_status;
}
