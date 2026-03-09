cmake_minimum_required(VERSION 3.16)
project(pinocchio_vendor)

find_package(ament_cmake REQUIRED)

include(ExternalProject)

ExternalProject_Add(pinocchio
  GIT_REPOSITORY https://github.com/stack-of-tasks/pinocchio
  GIT_TAG v3.6.0
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} -DBUILD_PYTHON_INTERFACE=OFF -DCMAKE_BUILD_TYPE=Release
)
