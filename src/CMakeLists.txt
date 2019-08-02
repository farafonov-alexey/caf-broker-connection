cmake_minimum_required(VERSION 3.2)
project(caf_broker C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CAF_ROOT_DIR ${PROJECT_SOURCE_DIR}/modules/actor-framework)

find_package(CAF COMPONENTS core io REQUIRED)

include_directories(${CAF_INCLUDE_DIRS})
add_compile_definitions(UNICODE _UNICODE)

include(CafBroker)
