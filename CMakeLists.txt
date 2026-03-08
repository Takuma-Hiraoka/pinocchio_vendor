cmake_minimum_required(VERSION 3.16)
project(pinocchio_vendor)

find_package(ament_cmake REQUIRED)

include(ExternalProject)

set(pinocchio_INSTALL_DIR ${CMAKE_CURRENT_BINARY_DIR}/pinocchio_install)

ExternalProject_Add(pinocchio_ext
  GIT_REPOSITORY https://github.com/stack-of-tasks/pinocchio
  GIT_TAG v3.6.0
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${pinocchio_INSTALL_DIR} -DBUILD_PYTHON_INTERFACE=OFF -DCMAKE_BUILD_TYPE=Release
)

install(
  DIRECTORY ${pinocchio_INSTALL_DIR}/include/
  DESTINATION include
)

install(
  DIRECTORY ${pinocchio_INSTALL_DIR}/lib/
  DESTINATION lib
)

ament_package(CONFIG_EXTRAS "pinocchio_vendor-extras.cmake")
