cmake_minimum_required(VERSION 3.10)
project(vector_demo VERSION 1.0)

add_executable(${PROJECT_NAME} main.cc)

target_link_libraries(${PROJECT_NAME}
    PRIVATE fmt
    PUBLIC gflags Boost::date_time Boost::log zmq 
    INTERFACE Boost::headers
    )

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
