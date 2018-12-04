cmake_minimum_required(VERSION 3.10)
project(rdt)

set(CMAKE_CXX_STANDARD 11)

include_directories(stop_wait/include)

add_executable(rdt
        stop_wait/bin/stop_wait
        stop_wait/include/Base.h
        stop_wait/include/DataStructure.h
        stop_wait/include/Global.h
        stop_wait/include/NetworkService.h
        stop_wait/include/RandomEventEnum.h
        stop_wait/include/RdtReceiver.h
        stop_wait/include/RdtSender.h
        stop_wait/include/StopWaitRdtReceiver.h
        stop_wait/include/StopWaitRdtSender.h
        stop_wait/include/Tool.h
        stop_wait/lib/libnetsim.a
        stop_wait/src/StopWait.cpp
        stop_wait/src/StopWaitRdtReceiver.cpp
        stop_wait/src/StopWaitRdtSender.cpp
        stop_wait/cmake_install.cmake
        stop_wait/CMakeCache.txt
        stop_wait/CMakeLists.txt
        stop_wait/Makefile
        input.txt
        output.txt)
