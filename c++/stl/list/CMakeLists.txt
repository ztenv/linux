cmake_minimum_required(VERSION 3.10)
project(list_demo VERSION 1.0)

add_executable(forward_list_demo forward_list.cc)
target_link_libraries(forward_list_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS forward_list_demo RUNTIME DESTINATION bin)

