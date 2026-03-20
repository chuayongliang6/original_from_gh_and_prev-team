cmake_minimum_required(VERSION 2.8.3)
add_compile_options(-std=c++0x -pthread)
project(farm_node)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_service_files(
  FILES
  farm_node.srv 
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS rospy message_runtime
  DEPENDS Boost )

include_directories(include ${catkin_INCLUDE_DIRS})

catkin_install_python(PROGRAMS scripts/run.py 
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

add_executable(farm_node src/run.cpp)
target_link_libraries(farm_node ${catkin_LIBRARIES})



