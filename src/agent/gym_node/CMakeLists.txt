cmake_minimum_required(VERSION 2.8.3)
project(gym_node)

find_package(catkin REQUIRED COMPONENTS rospy roslaunch)

catkin_python_setup()

if(CATKIN_ENABLE_TESTING)
  roslaunch_add_file_check(launch)
endif()

catkin_package(CATKIN_DEPENDS rospy)

catkin_install_python(PROGRAMS 
  src/planning/run.py
  DESTINATION
  ${CATKIN_PACKAGE_BIN_DESTINATION})

install(DIRECTORY launch/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch)
