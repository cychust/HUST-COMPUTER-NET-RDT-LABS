cmake_minimum_required(VERSION 3.5)
PROJECT(stop_wait)

SET(CMAKE_C_COMPTLER GCC)



add_definitions(-std=c++11)


INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)
aux_source_directory(${PROJECT_SOURCE_DIR}/src SRC_LIST)
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

ADD_EXECUTABLE(stop_wait ${SRC_LIST} src/SRReceiver.cpp src/SRReceiver.h src/SRSender.cpp src/SRSender.h)

TARGET_LINK_LIBRARIES(stop_wait "-no-pie" ${PROJECT_SOURCE_DIR}/lib/libnetsim.a)
