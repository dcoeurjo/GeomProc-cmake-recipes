#include <iostream>
#include <DGtal/base/Common.h>
#include <polyscope/polyscope.h>
#include <geometrycentral/surface/meshio.h>
#include <Catch2/catch.hpp>
#include <Eigen/Core>
#include <igl/readOFF.h>
#include <stb_image.h>
#include <stb_image_write.h>
#include <spdlog/spdlog.h>
#include <pybind11/pybind11.h>

int main(int argc, char** argv)
{
  
  std::cout << "All good"<<std::endl;
  
  spdlog::info("Welcome to spdlog!");
  DGtal::trace.info() << "DGtal trace"<<std::endl;
  polyscope::init();
  Eigen::VectorXd aVector(3);
  aVector << 1, 2, 3;
   
  return 0;
}
