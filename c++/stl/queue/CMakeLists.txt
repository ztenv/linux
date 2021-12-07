cmake_minimum_required(VERSION 3.10)
project(queue_demo VERSION 1.0)

add_executable(priority_queue_demo priority_queue.cc)
target_link_libraries(priority_queue_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS priority_queue_demo RUNTIME DESTINATION bin)

add_executable(deque_demo deque.cc)
target_link_libraries(deque_demo
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )
install(TARGETS deque_demo RUNTIME DESTINATION bin)
