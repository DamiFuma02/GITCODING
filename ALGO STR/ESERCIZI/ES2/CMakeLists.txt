cmake_minimum_required(VERSION 3.0)

project(es2 LANGUAGES C)

add_executable(es2 main.c)

install(TARGETS es2 RUNTIME DESTINATION bin)
