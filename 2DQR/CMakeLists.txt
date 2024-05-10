cmake_minimum_required(VERSION 3.27)
project(2dqr)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_COMPILER g++)

# find_package(Boost REQUIRED COMPONENTS process)
find_package(cxxopts CONFIG REQUIRED)
find_package(Z3 CONFIG REQUIRED)

file(GLOB SRC "src/*.cpp")

add_executable(2dqr ${SRC})
include_directories(inc)

target_link_libraries(2dqr PRIVATE z3::libz3)
target_link_libraries(2dqr PRIVATE cxxopts::cxxopts)