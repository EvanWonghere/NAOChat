#include "spark.h"

#define NO_KEYWORD_FOUND -1

using namespace AIKIT;
using namespace AL;

std::string sparkans;

std::string temp;
bool init = true;
bool talking = true;

std::vector<std::string> names;
AL::ALValue keys;
AL::ALValue times;

struct Dialog
{
    std::string role;
    std::string content;
};
static std::vector<Dialog> history;

struct UsrCtx
{
    std::string chatID;
};

void sparksay(ALTextToSpeechProxy * tts = nullptr)
{
    static ALTextToSpeechProxy * sparksaytts = nullptr;
    if (tts) sparksaytts = tts;

    if (sparksaytts != nullptr && sparkans.length())
    {
        sparksaytts->say(sparkans);
        sparkans.clear();
    }
}

void say(ALTextToSpeechProxy * tts = nullptr, std::string text = "")
{
    static ALTextToSpeechProxy * saytts = nullptr;
    if (tts) saytts = tts;
    else saytts->say(text);
}

void thinkmotion(ALMotionProxy * motion = nullptr, ALLedsProxy * leds = nullptr)
{
    static ALMotionProxy * think = nullptr;
    static ALLedsProxy * light = nullptr;
    if (motion || leds)
    {
        think = motion;
        light = leds;
    }
    if (think || light)
    {
        thinking(names, times, keys, think, light);
    }
}

void addUserContent(std::string userContent)
{
    history.push_back({"user", userContent});
}

void addAssistantContent(std::string assistantContent)
{
    history.push_back({"assistant", assistantContent});
}

void initHistory()
{
    history.clear();

    std::string prompt = R"(ADD YOUR PROMPT HERE！)";

    addUserContent(prompt);
}

std::string getInputText() {
    rapidjson::StringBuffer buffer;
    rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);

    rapidjson::Document document;
    document.SetArray();

    for (const auto& entry : history) {
        rapidjson::Value jsonEntry(rapidjson::kObjectType);
        jsonEntry.AddMember("role", rapidjson::Value(entry.role.c_str(), document.GetAllocator()).Move(), document.GetAllocator());
        jsonEntry.AddMember("content", rapidjson::Value(entry.content.c_str(), document.GetAllocator()).Move(), document.GetAllocator());
        document.PushBack(jsonEntry, document.GetAllocator());
    }

    document.Accept(writer);
    std::string jsonString = buffer.GetString();

    return jsonString;
}

int detectMayjor(std::string rslt)
{
    std::vector<std::string> majors = {"majors"};

    int i = 0;
    for (auto & major : majors)
    {
        if (rslt.find(major) != std::string::npos)
        {
            break;
        }
        ++ i;
    }

    return i;
}

int detectKeyword(std::string rslt)
{
    std::vector<std::string> keywords = {"辅导员", "本科", "研究生", "你的", "名字", "今天", "天气", "专业", "介绍", "自己", "你是谁", "你的", "你叫什么"};

    if (rslt.find(keywords[0]) != std::string::npos) // 辅导员
    {
        int st1 = rslt.find(keywords[1]), st2 = rslt.find(keywords[2]);
        if (st1 != std::string::npos && st2 != std::string::npos)
        {
            return 3;
        }
        else if (st2 != std::string::npos)
        {
            return 2;
        }
        else if (st1 != std::string::npos)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    else if ((rslt.find(keywords[3]) != std::string::npos && rslt.find(keywords[4]) != std::string::npos)
            || (rslt.find(keywords[11]) != std::string::npos && rslt.find(keywords[4]) != std::string::npos)
            || (rslt.find(keywords[8]) != std::string::npos && rslt.find(keywords[9]) != std::string::npos)
            || (rslt.find(keywords[10]) != std::string::npos) || (rslt.find(keywords[12]) != std::string::npos)) // 自我介绍
    {
        return 4;
    }
    else if (rslt.find(keywords[5]) != std::string::npos && rslt.find(keywords[6]) != std::string::npos) // 天气
    {
        return 5;
    }
    // else if (rslt.find(keywords[7]) != std::string::npos) // 专业
    // {
    //     if (rslt.find(keywords[8]) == std::string::npos)
    //     {
    //         return 6;
    //     }
    //     else
    //     {
    //         return detectMayjor(rslt);
    //     }
    // }

    return NO_KEYWORD_FOUND;
}

std::string sendGivenAnswer(int serial)
{
    std::cout << "serial: " << serial << std::endl;
    serial = std::min(serial, 5);

    static std::vector<std::string> givenAns = {"WRITE YOUR GIVEN ANSWER HERE!"};

    std::string str = givenAns[serial];

    addAssistantContent(str);
    return str;
}

std::string listen(ALProxy * asr = nullptr)
{

    static ALProxy * asrProxy = nullptr;
    if (asr)
    {
        asrProxy = asr;
        return std::string("");
    }
    else
    {

        asrProxy->callVoid("startSession");
        std::cout << "session started" << std::endl;
        sleep(4);
        std::string rslt = asrProxy->call<std::string>("getResult");
        std::cout << "rslt got" << std::endl;
        asrProxy->callVoid("stopSession");

        std::cout << "rslt: " << rslt << std::endl;

        if (rslt.find("再见") != std::string::npos)
        {
            talking = false;
        }
        return rslt;
    }
}

std::string getUsrInput(int & ret)
{
    std::cout << "init: " << init << std::endl;
    if (!init)
    {
        std::string addedPrompt = "你的回答应尽量根据最开始给你的背景知识回答。字数注意尽量不要超过50个汉字。";

        say(nullptr, "你想问我什么呢？");

        auto text = listen();
        ret = detectKeyword(text);
        std::cout << text << std::endl;
        text = text.empty() ? "let me think for a moment" : text; // Empty question could cause error
        addUserContent(text);
    }
    std::cout << "func: " << getInputText() << std::endl;
    temp = getInputText();
    return temp;
}

int sendRequest()
{
    ChatParam* config = ChatParam::builder();
    config->uid("xxxid")
          ->domain("generalv2")
          ->auditing("default")
          ->url("ws://spark-api.xf-yun.com/v2.1/chat");

    static UsrCtx usr = {"FistRound"};
    int ret = 0;

    init = false;

    auto usrinput = getUsrInput(ret).c_str();
    std::cout << "usrinput: " << usrinput << std::endl;

    int state = 1;
    if (ret == NO_KEYWORD_FOUND)
    {
        state = AIKIT_AsyncChat(config, usrinput, &usr);
    }
    else
    {
        say(nullptr, sendGivenAnswer(ret));
        sendRequest();
    }
    thinkmotion();
    if (state)
    {
        printf("AIKIT_AsyncChat failed:%d\n",ret);
    }

    return ret;
}

void initialRequest()
{
    ChatParam* config = ChatParam::builder();
    config->uid("xxxid")
          ->domain("generalv2")
          ->auditing("default")
          ->url("ws://spark-api.xf-yun.com/v2.1/chat");;

    int foo = 0;
    auto usrinput = getUsrInput(foo).c_str();
    std::cout << "init usrinput: " << usrinput << std::endl;
    static UsrCtx usr = {"FistRound"};

    int ret = AIKIT_AsyncChat(config, usrinput, &usr);
    if (ret)
    {
        printf("AIKIT_AsyncChat failed:%d\n",ret);
    }
}

void chatOnToken(AIChat_Handle* handle, const int& completionTokens, const int& promptTokens, const int& totalTokens)
{
    if(handle != nullptr)
    {
        std::cout << "chatID:" << ((UsrCtx*)handle->usrContext)->chatID <<", ";
    }
    std::cout << "completionTokens:" << completionTokens << " promptTokens:" << promptTokens << " totalTokens:" << totalTokens << std::endl;
    addAssistantContent(sparkans);
    if (!init) sparksay();
    else sparkans.clear();
    // sparksay();
    sendRequest();
}

static void chatOnOutput(AIChat_Handle* handle, const char* role, const char* content, const int& index)
{
    if(handle != nullptr)
    {
        std::cout << "chatID:" << ((UsrCtx*)handle->usrContext)->chatID << ", ";
    }
    std::cout << "role:" << role << ", content: " << content << std::endl;
    sparkans += content;
}

static void chatOnError(AIChat_Handle* handle, const int& err, const char* errDesc)
{
    if(handle != nullptr)
    {
        std::cout << "chatID:" << ((UsrCtx*)handle->usrContext)->chatID << ", ";
    }
    printf("chatOnError: err:%d,desc:%s\n", err, errDesc);
}

void initSDK()
{
    AIKIT_InitParam initParam{};
    AIKIT_SetLogInfo(100, 0, nullptr);
    initParam.appID = "3bae7be3";
    initParam.apiKey = "f66463dd1ed3095d4c22f87d624d431c";
    initParam.apiSecret = "OTBmZTQ3MWY1YjAwNzkyNDE3YjAzZGEy";
    int ret = AIKIT_Init(&initParam);
    if(ret)
    {
        printf("AIKIT_Init failed:%d\n",ret);
        return ;
    }

    talking = true;
    init = true;

    //异步回调注册
    AIKIT_ChatCallback({ chatOnOutput, chatOnToken, chatOnError });

    std::cout << "init done!" << std::endl;
    return;
}

void unInit()
{
    //等待异步回调，这里sleep仅是demo最简便运行需要
    //真实场景，应用侧自行决定合适进行SDK逆初始化
    std::cout << "unInit before sleep!" << std::endl;
    int timer = 0;
    while (talking && timer ++ < 300)
    {
        sleep(1);
    }
    //逆初始化SDK
    sparkans.clear();
    AIKIT_UnInit();

    if (timer >= 300) say(nullptr, "let's chat a new round!");
    else say(nullptr, "see you again!");

    std::cout << "sleep and uninit done!" << std::endl;

    history.clear();

    return;
}

void spark(ALTextToSpeechProxy& tts, ALProxy * asr, ALMotionProxy& motion, ALLedsProxy& leds)
{
    sparksay(&tts);
    say(&tts);
    listen(asr);
    addParams(names, times, keys);
    thinkmotion(&motion, &leds);

    initHistory();
    initSDK();
    initialRequest();
    // sendRequest();
    //逆初始化
    unInit();

    return;
}
