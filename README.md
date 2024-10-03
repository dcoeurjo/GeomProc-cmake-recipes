# GeomProc-cmake-recipes

This repository contains [cmake](cmake.org)/[CPM](https://github.com/cpm-cmake/CPM.cmake) recipes that I use to easily integrate geometry processing libraries and utilities to my c++ projects.
When included in your `CMakeLists.txt` script, `cmake` will automatically download the deps and prepare the targets.


These scripts are heavily inspired by the external recipes of [Lagrange](https://opensource.adobe.com/lagrange-docs/).

Classical usage (cf `all-in.cpp`):
```cmake
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/PATH-TO-THE-RECIPES)

include(dgtal)
include(libigl)
include(polyscope)
include(geometry-central)

add_executable(main main.cpp)
target_link_libraries(main polyscope DGtal ${DGTAL_LIBRARIES} geometry-central igl::core)
```
For system-wide downloads, consider using the `CPM_SOURCE_CACHE` environnment variable (cf [CPM doc](https://github.com/cpm-cmake/CPM.cmake?tab=readme-ov-file#CPM_SOURCE_CACHE))


# Geometry processing packages
Libs | version
-----|--------
[eigen](https://eigen.tuxfamily.org) |3.4.0
[libigl](https://libigl.github.io) | 2.5.0
[polyscope](polyscope.run) | 2.3.0
[geometry-central](https://geometry-central.net) | master
[dgtal](dgtal.org) | 16bdcf9d542b81d4ebf2734f942ef86f4cdfa011
[stb_image](https://github.com/nothings/stb) | master


# Tools
Libs | version
-----|--------
[cli11](https://cliutils.github.io/CLI11/book/)| v2.3.2
[catch2](https://github.com/catchorg/Catch2)| 2.13.7
[openmp](openmp.org)| n.a.
[spdlog](https://github.com/gabime/spdlog) | 1.14.1
[pybind11](https://pybind11.readthedocs.io/en/stable/) | 2.13.6