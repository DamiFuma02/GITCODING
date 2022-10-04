cmake_minimum_required(VERSION 3.0)

project(es_1 LANGUAGES C)

add_executable(es_1 main.c)

install(TARGETS es_1 RUNTIME DESTINATION bin)
