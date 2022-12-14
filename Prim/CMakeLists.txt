cmake_minimum_required(VERSION 3.15)
project(prim)

set(CMAKE_CXX_STANDARD 14)

add_executable(prim graph.h graph.cpp heap.h heap.cpp prim.h prim.cpp main.cpp)