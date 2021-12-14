cmake_minimum_required(VERSION 3.10)
project(map_demo VERSION 1.0)

add_executable(map_demo map.cc)
target_link_libraries(map_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS map_demo RUNTIME DESTINATION bin)
