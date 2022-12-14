cmake_minimum_required(VERSION 3.15)
project(dijkstra)

set(CMAKE_CXX_STANDARD 14)

add_executable(dijkstra graph.h graph.cpp heap.h heap.cpp dijkstra.h dijkstra.cpp main.cpp)