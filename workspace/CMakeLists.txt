cmake_minimum_required (VERSION 3.22)
project(CodeCraft)

set(CMAKE_CXX_STANDARD 17) # C++17
set(CMAKE_C_STANDARD 11) # C11

if (!WIN32)
    link_libraries(pthread rt m)
endif (!WIN32)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

add_compile_options(-O2)

file(GLOB SOURCES "*.h" "*.cpp")
list(REMOVE_ITEM SOURCES "${PROJECT_SOURCE_DIR}/main.cpp")
add_library(CodeCraft ${SOURCES})

add_executable(main ${PROJECT_SOURCE_DIR}/main.cpp)
target_link_libraries(main CodeCraft)
set_target_properties(main PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR})