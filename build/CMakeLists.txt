cmake_minimum_required(VERSION 3.15)
project(saildboat_semester_project)

set(CMAKE_CXX_STANDARD 14)

add_executable(saildboat_semester_project ../main.cpp ../src/SailBoatROS/sailrobot/src/p4-group-nodes/readusb.cpp)