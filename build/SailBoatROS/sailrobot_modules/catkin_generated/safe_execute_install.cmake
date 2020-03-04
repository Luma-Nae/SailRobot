execute_process(COMMAND "/home/sailboat/catkin_ws/build/SailBoatROS/sailrobot_modules/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sailboat/catkin_ws/build/SailBoatROS/sailrobot_modules/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
