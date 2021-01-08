cmake_minimum_required( VERSION 3.8 FATAL_ERROR)
project(main LANGUAGES CXX)
 
#set dirs
set(PROJECT_ROOT ${CMAKE_CURRENT_LIST_DIR})
message("project dir:${PROJECT_ROOT}")
 
SET(CMAKE_EXPORT_COMPILE_COMMANDS ON)   #导出clangd需要的文件，用于智能提示和基于语议的补全
SET(BIN_DESTINATION ${PROJECT_SOURCE_DIR}/bin)
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${BIN_DESTINATION})
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${BIN_DESTINATION})
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BIN_DESTINATION})
 
#include cmake files
#include(${PROJECT_ROOT}/../version.cmake)
 
#set compile flags
#add_definitions(-std=c++11 -g -rdynamic)
set(CMAKE_CXX_FLAGS "-g3 -rdynamic -std=c++11")
set(CMAKE_CXX_FLAGS "-U__FILE__ -D__FILE__='\"$(subst $(dir $<),,$<)\"'")
set(CMAKE_CXX_FLAGS_DEBUG "-g3 -O0 ")#-fsanitize=address -fno-omit-frame-pointer -fsanitize=leak")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
 
#include dirs
include_directories(./ ../common/
    $ENV{BOOST_ROOT}
    )
 
#link dirs
link_directories(${BIN_DESTINATION} 
    $ENV{BOOST_ROOT}/stage/lib
    )
 
#execute 
SET(SRC_MAIN main.cpp logger.cpp)
add_executable( ${PROJECT_NAME} ${SRC_MAIN})
#set_target_properties(${PROJECT_NAME} PROPERTIES VERSION ${PROJECT_VERSION})    
target_link_libraries(${PROJECT_NAME} pthread boost_log boost_filesystem boost_thread)

#add_executable(server server.cpp ../include/common.cpp)
#set_target_properties(server PROPERTIES VERSION ${PROJECT_VERSION})    
#target_link_libraries(server pthread zmq zmqpp gflags)

