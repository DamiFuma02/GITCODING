cmake_minimum_required(VERSION 3.0)

project(prova LANGUAGES C)

add_executable(prova main.c)

install(TARGETS prova RUNTIME DESTINATION bin)
