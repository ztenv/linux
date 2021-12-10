cmake_minimum_required(VERSION 3.10)
project(set_demo VERSION 1.0)

add_executable(set_demo set.cc)
target_link_libraries(set_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS set_demo RUNTIME DESTINATION bin)
