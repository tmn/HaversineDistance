cmake_minimum_required(VERSION 3.26)
project(haversine LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 11)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/src/include")

set(SOURCES
    src/haversineFormula.cpp

    src/include/haversineFormula.h
)

add_library(haversine ${SOURCES})
target_include_directories(haversine PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")
