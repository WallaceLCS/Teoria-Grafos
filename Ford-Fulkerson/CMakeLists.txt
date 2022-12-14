cmake_minimum_required(VERSION 3.15)
project(ford-fulkerson)

set(CMAKE_CXX_STANDARD 14)

add_executable(ford-fulkerson graph.h bfs.h bfs.cpp ford_fulkerson.h ford_fulkerson.cpp main.cpp)