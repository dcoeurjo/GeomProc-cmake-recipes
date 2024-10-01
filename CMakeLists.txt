cmake_minimum_required(VERSION 3.14)
project(CMakeRecipes)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})


include(dgtal)
include(polyscope)
include(cli11)
include(eigen)
include(libigl)
include(geometry-central)
include(catch2)
include(openmp)

