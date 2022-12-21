cmake_minimum_required(VERSION 3.20)

set(CMAKE_CUDA_ARCHITECTURES 60 61 62 70 72 75 86)
set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)

project(db_factory LANGUAGES CXX CUDA)
enable_testing()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# Enable ASAN only as you need. Please notice
#       1. This project do not pass leak-santizer
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

find_package(fmt)

find_library(CRYPTOPP_LIB cryptopp)
message(STATUS "finding ${CRYPTOPP_LIB}")

# set(SRC_PATH ${PROJECT_SOURCE_DIR}/src)
set(INC_PATH ${PROJECT_SOURCE_DIR}/../)
set(MPT_INC_PATH ${PROJECT_SOURCE_DIR}/GPU-Merkle-Patricia-Trie/mpt-with-compress/include)
# set(TEST_PATH ${PROJECT_SOURCE_DIR}/test)

# file(GLOB_RECURSE SRC_FILES "${PROJECT_SOURCE_DIR}/*.cc" "${PROJECT_SOURCE_DIR}/*.cpp")
# file(GLOB_RECURSE TEST_FILES "test/*.cu" "test/*.cpp")

add_library(db_factory STATIC db_factory.cu)
target_include_directories(db_factory 
        PUBLIC ${MPT_INC_PATH}
        PUBLIC ${INC_PATH})
target_link_libraries(db_factory
        PUBLIC cuda 
        PUBLIC fmt::fmt 
        PUBLIC ${CRYPTOPP_LIB}
) 


# foreach(test_file IN LISTS TEST_FILES)
#         get_filename_component(test_name ${test_file} NAME_WE)
#         add_executable(${test_name} ${test_file} ${SRC_FILES})
#         target_include_directories(${test_name}
#                 PUBLIC ${INC_PATH}
#                 PUBLIC ${MPT_INC_PATH})  
#         target_link_libraries(${test_name} 
#                 PRIVATE cuda 
#                 PRIVATE fmt::fmt 
#                 PRIVATE GTest::gtest_main
#                 PRIVATE ${CRYPTOPP_LIB}
#         ) 

#         gtest_discover_tests(${test_name})
# endforeach()
