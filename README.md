# GeomProc-cmake-recipes

This repository contains [cmake](cmake.org)/[CPM](https://github.com/cpm-cmake/CPM.cmake) recipes that I use to easily integrate geometry processing libraries and utilities to my c++ projects.

These scripts are heavily inspired by the external recipes of [Lagrange](https://opensource.adobe.com/lagrange-docs/).

Classical usage:
```cmake
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/PATH-TO-THE-RECIPES)

include(dgtal)
include(libigl)
include(polyscope)
include(geometry-central)

add_executable(main main.cpp)
target_link_libraries(main polyscope DGtal ${DGTAL_LIBRARIES} geometry-central igl::core)

```


# Geometry processing packages
Libs | version
-----|--------
[dgtal](dgtal.org) | 16bdcf9d542b81d4ebf2734f942ef86f4cdfa011
[eigen](https://eigen.tuxfamily.org) |3.4.0
[libigl](https://libigl.github.io) | 2.5.0
[polyscope](polyscope.run) | 2.3.0
[geometry-central](https://geometry-central.net) | master

# Tools
Libs | version
-----|--------
[cli11](https://cliutils.github.io/CLI11/book/)| v2.3.2
[catch2](https://github.com/catchorg/Catch2)| 2.13.7
[openmp](openmp.org)| n.a.


