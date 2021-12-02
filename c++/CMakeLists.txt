cmake_minimum_required(VERSION 3.10)
project(cppdemo VERSION 1.0)

list(APPEND CMAKE_MODULE_PATH
     ${CMAKE_SOURCE_DIR}/cmake
     )

if (CMAKE_BUILD_TYPE)
  string(TOLOWER ${CMAKE_BUILD_TYPE} BUILD_VARIANT)
elseif(CMAKE_BUILD_TYPE MATCHES "Release")
  string(TOLOWER ${CMAKE_BUILD_TYPE} BUILD_VARIANT)  
else()
  message(FATAL_ERROR "Invalid CMAKE_BUILD_TYPE")
endif()

option(ASYNC_LOGGING "Non-block logging" ON)

if (NOT PROJECT_NS)
  set(PROJECT_NS "quant")
endif()

add_definitions(-DPROJECT_NS=${PROJECT_NS})

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libstdc++ -static-libgcc")
set(BUILD_SHARED_LIBS OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

if (EXTERNAL_ROOT)
  set(EXTERNAL_ROOT ${EXTERNAL_ROOT}/${BUILD_VARIANT})
elseif (IS_DIRECTORY "$ENV{EXTERNAL_ROOT}")
  set(EXTERNAL_ROOT $ENV{EXTERNAL_ROOT}/${BUILD_VARIANT})
else()
  message(FATAL_ERROR "Invalid EXTERNAL_ROOT")
endif()

if (DEPLOY_PREFIX)
elseif (IS_DIRECTORY "$ENV{DEPLOY_PREFIX}")
  set(DEPLOY_PREFIX $ENV{DEPLOY_PREFIX})
else()
  set(DEPLOY_PREFIX ${CMAKE_BINARY_DIR}/deploy)
endif()
set(CMAKE_INSTALL_PREFIX ${DEPLOY_PREFIX}/${PROJECT_NAME}/${PROJECT_VERSION}/${BUILD_VARIANT})

#if (ARTIFACTORY)
#elseif (DEFINED ENV{ARTIFACTORY})
#  set(ARTIFACTORY $ENV{ARTIFACTORY})
#else()
#  set(ARTIFACTORY http://172.23.22.138:30080/artifacts)
#endif()

message("BUILD_VARIANT: ${BUILD_VARIANT}")
message("DEPLOY_PREFIX: ${DEPLOY_PREFIX}")
message("ARTIFACTORY:   ${ARTIFACTORY}")


enable_testing()

#set(gflags_DIR ${EXTERNAL_ROOT}/lib/cmake/gflags)
find_package(gflags REQUIRED COMPONENTS static)
#set(GTest_DIR ${EXTERNAL_ROOT}/lib/cmake/GTest)
#find_package(GTest REQUIRED CONFIG)

#if (WIN32)
#  set(ZeroMQ_DIR ${EXTERNAL_ROOT}/cmake)
#else()
#  set(ZeroMQ_DIR ${EXTERNAL_ROOT}/share/cmake/ZeroMQ)
#endif()

set(Boost_USE_STATIC_LIBS ON)
set(Boost_INCLUDE_DIR /home/ubuntu/3rd/boost_1_77_0)
find_package(Boost REQUIRED COMPONENTS filesystem program_options system date_time log)

if (WIN32)
  set(OPENSSL_ROOT_DIR "C:/Program Files/OpenSSL-Win64")
  set(OPENSSL_USE_STATIC_LIBS TRUE)
endif()
#find_package(OpenSSL)
find_package(fmt)

#set(HDF5_ROOT ${EXTERNAL_ROOT})
#set(HDF5_USE_STATIC_LIBRARIES ON)
#find_package(HDF5 REQUIRED COMPONENTS C CXX)
#find_package(mongoc-1.0 CONFIG)
#find_package(bson-1.0 CONFIG)

#set(Protobuf_USE_STATIC_LIBS ON)
#find_package(Protobuf REQUIRED)

#set(LIBUV_ROOT ${EXTERNAL_ROOT})
#find_package(LibUv REQUIRED)
#set(LIBWEBSOCKETS_ROOT ${EXTERNAL_ROOT})
#find_package(Libwebsockets REQUIRED)
#find_package(Hiredis REQUIRED)
#find_package(LMDB REQUIRED)
#find_package(cppzmq REQUIRED)

#set(Libssh2_DIR ${EXTERNAL_ROOT}/lib/cmake/libssh2)
#find_package(Libssh2 CONFIG)

#execute_process(
#  COMMAND git rev-parse --abbrev-ref HEAD
#  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
#  OUTPUT_VARIABLE GIT_BRANCH
#  OUTPUT_STRIP_TRAILING_WHITESPACE
#  )
#execute_process(
#  COMMAND git log -1 --format=%H
#  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
#  OUTPUT_VARIABLE GIT_COMMIT
#  OUTPUT_STRIP_TRAILING_WHITESPACE
#  )
#execute_process(
#  COMMAND git log -1 --format=%ci
#  WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
#  OUTPUT_VARIABLE GIT_COMMIT_TIME
#  OUTPUT_STRIP_TRAILING_WHITESPACE
#  )

#configure_file(${CMAKE_SOURCE_DIR}/cmake/version.h.in ${CMAKE_BINARY_DIR}/gen/version.h)
#configure_file(${CMAKE_SOURCE_DIR}/cmake/config.h.in ${CMAKE_BINARY_DIR}/gen/config.h)

include_directories(
  ${CMAKE_SOURCE_DIR}
  ${CMAKE_BINARY_DIR}/gen
  )

#include(GetArtifact)
#get_artifact(cctrd-framework ${ARTIFACTORY}/cctrd-framework/1.0/cctrd-framework-1.0-latest.tgz ${DEPLOY_PREFIX}/cctrd-framework/1.0/${BUILD_VARIANT}/cmake)
#get_artifact(cctrd-messaging ${ARTIFACTORY}/cctrd-messaging/1.0/cctrd-messaging-1.0-latest.tgz ${DEPLOY_PREFIX}/cctrd-messaging/1.0/${BUILD_VARIANT}/cmake)

add_subdirectory(stl)

#install(EXPORT ${PROJECT_NAME} DESTINATION cmake NAMESPACE "${PROJECT_NS}::" FILE ${PROJECT_NAME}-config.cmake)

#install(FILES msg-hub.flags DESTINATION bin/ PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ )
#install(FILES debug.sh DESTINATION bin/ PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ )
