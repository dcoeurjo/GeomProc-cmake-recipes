cmake_minimum_required(VERSION 3.14)
project(geomproc-recipes)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

include(dgtal)
include(polyscope)
include(cli11)
include(eigen)
include(libigl)
include(geometry-central)
include(catch2)
include(openmp)
include(spdlog)
include(stb_image)
include(pybind11)
include(geogram)
include(cgal)

add_executable(all-in all-in.cpp)
target_link_libraries(all-in PRIVATE pybind11::pybind11 spdlog::spdlog polyscope CGAL geogram CLI11::CLI11 Eigen3::Eigen igl::core geometry-central Catch2::Catch2 OpenMP::OpenMP_CXX DGtal ${DGtal_LIBRARIES})

