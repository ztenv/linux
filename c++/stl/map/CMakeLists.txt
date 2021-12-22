cmake_minimum_required(VERSION 3.10)
project(map_demo VERSION 1.0)

add_executable(map_demo map.cc)
target_link_libraries(map_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS map_demo RUNTIME DESTINATION bin)

add_executable(multi_map_demo multi_map.cc)
target_link_libraries(multi_map_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS multi_map_demo RUNTIME DESTINATION bin)

add_executable(unordered_map_demo unordered_map.cc)
target_link_libraries(unordered_map_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS unordered_map_demo RUNTIME DESTINATION bin)
