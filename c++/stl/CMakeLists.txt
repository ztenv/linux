cmake_minimum_required(VERSION 3.10)
project(stl_demo VERSION 1.0)

add_subdirectory(priority_queue)
add_subdirectory(array)
add_subdirectory(vector)

#install(EXPORT ${PROJECT_NAME} DESTINATION cmake NAMESPACE "${PROJECT_NS}::" FILE ${PROJECT_NAME}-config.cmake)
#install(FILES msg-hub.flags DESTINATION bin/ PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ )
#install(FILES debug.sh DESTINATION bin/ PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ )
