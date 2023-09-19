cmake_minimum_required(VERSION 2.8)
project(ALSoundProcessing)
find_package(qibuild)

option(SOUNDPROCESSING_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  src/*.cpp
  src/*.c
  include/*.h
)

include_directories(../include)
# set(MSC_DIR libs)
# set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR})

# clean(libmsc)
# flib(msc libmsc)

set(EX_LIB_DIR ${CMAKE_SOURCE_DIR}/../lib)
set(LIB_DIR /home/yufeng/naoTalk/lib)

if(SOUNDPROCESSING_IS_REMOTE)
  add_definitions(" -DSOUNDPROCESSING_IS_REMOTE ")
  qi_create_bin(ALSoundProcessing ${_srcs})
else()
  qi_create_lib(ALSoundProcessing SHARED ${_srcs} SUBFOLDER naoqi)
endif()
#qi_stage_lib(msc)
target_include_directories(ALSoundProcessing PRIVATE include)
target_link_libraries(ALSoundProcessing PRIVATE msc rt dl pthread asound stdc++ ${LIB_DIR}/libalcommon.so ${LIB_DIR}/libalproxies.so ${LIB_DIR}/libalthread.so ${LIB_DIR}/libalvalue.so ${LIB_DIR}/libalerror.so ${LIB_DIR}/libqi.so ${LIB_DIR}/libboost_system.so.1.59.0 /home/yufeng/naoTalk/lib/libalaudio.so /home/yufeng/naoTalk/lib/libalextractor.so)
# qi_use_lib(tactile ALCOMMON ALPROXIES ALTHREAD msc)${LIB_DIR}/libalcommon.so

