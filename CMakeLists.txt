cmake_minimum_required(VERSION 3.20)
set(CMAKE_CUDA_ARCHITECTURES 60 61 62 70 72 75 86)
set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)

project(ycsbc LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

add_subdirectory("db")
add_subdirectory("core")

add_executable(ycsbc ycsbc.cc)
target_include_directories(ycsbc 
        PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(ycsbc 
        PUBLIC db_factory 
        PUBLIC core_workload
        PUBLIC pthread
        PUBLIC cuda)
