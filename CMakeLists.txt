cmake_minimum_required(VERSION 3.5)

project(tocabi_qui LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package(Qt5 COMPONENTS Core Quick REQUIRED)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
  mujoco_ros_msgs  
)


include_directories( ${CMAKE_BINARY_DIR} )
catkin_package()


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

qt5_add_resources(RESOURCE_FILES resource/qml.qrc)

add_executable(tocabi_qui
  main.cpp
  ros_connect.cpp
  ${RESOURCE_FILES}
)

target_compile_definitions(tocabi_qui
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(tocabi_qui
  PRIVATE Qt5::Core Qt5::Quick
  ${catkin_LIBRARIES}
)
