cmake_minimum_required( VERSION 3.8 FATAL_ERROR)
project(main LANGUAGES CXX)
 
#set dirs
list(APPEND CMAKE_MODULE_PATH 
    $ENV{BOOST_ROOT}/stage/lib/cmake  # append boost cmake dir
    /usr/local/lib/cmake/             # append gflags cmake dir
    )

set(PROJECT_ROOT ${CMAKE_CURRENT_LIST_DIR})
message("project dir:${PROJECT_ROOT}")
 
SET(CMAKE_EXPORT_COMPILE_COMMANDS ON)   #导出clangd需要的文件，用于智能提示和基于语议的补全
SET(BIN_DESTINATION ${PROJECT_SOURCE_DIR}/bin)
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${BIN_DESTINATION})
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${BIN_DESTINATION})
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BIN_DESTINATION})
 
#include cmake files
include(${PROJECT_ROOT}/version.cmake)

find_package(Boost REQUIRED COMPONENTS filesystem log system date_time)  #find boost components
find_package(gflags REQUIRED COMPONENTS static)      #find gflags
 
#set compile flags
#add_definitions(-std=c++11 -g -rdynamic)
set(CMAKE_CXX_FLAGS "-g3 -rdynamic -std=c++11")
set(CMAKE_CXX_FLAGS_DEBUG "-g3 -O0 -fsanitize=address -fno-omit-frame-pointer -fsanitize=leak")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
 
#include dirs
include_directories(./ 
    $ENV{BOOST_ROOT})
 
#link dirs
link_directories(${BIN_DESTINATION})
 
#libraries
#SET(SRC_BASE_CALC base_calc.cpp)
#add_library(base_calc SHARED ${SRC_BASE_CALC})
#set_target_properties(base_calc PROPERTIES VERSION ${PROJECT_VERSION}) 
 
 
#execute 
SET(SRC_MAIN demo.cpp main.cpp )
add_executable( ${PROJECT_NAME} ${SRC_MAIN})
set_target_properties(${PROJECT_NAME} PROPERTIES VERSION ${PROJECT_VERSION})    
target_link_libraries(${PROJECT_NAME} gflags Boost::filesystem Boost::log Boost::system Boost::date_time) #link gflags
