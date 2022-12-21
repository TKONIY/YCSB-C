cmake_minimum_required(VERSION 3.20)

project(core_workload LANGUAGES CXX)
enable_testing()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED TRUE)

# Enable ASAN only as you need. Please notice
#       1. This project do not pass leak-santizer
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

set(INC_PATH ${PROJECT_SOURCE_DIR}/)

add_library(core_workload STATIC core_workload.cc)
target_include_directories(core_workload 
        PUBLIC ${INC_PATH})

