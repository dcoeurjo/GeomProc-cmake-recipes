#include <iostream>
#include <DGtal/base/Common.h>
#include <polyscope/polyscope.h>
#include <geometrycentral/surface/meshio.h>
#include <catch2/catch.hpp>
#include <Eigen/Core>
#include <igl/readOFF.h>
#include <stb_image.h>
#include <stb_image_write.h>
#include <spdlog/spdlog.h>
#include <CGAL/Simple_cartesian.h>
#include <directional/index_prescription.h>
#include <directional/CartesianField.h>
#include <boost/filesystem.hpp>

#include <cinolib/meshes/meshes.h>
#include <cinolib/Poisson_sampling.h>

int main(int argc, char** argv)
{
  
  std::cout << "All good"<<std::endl;
  
  spdlog::info("Welcome to spdlog!");
  DGtal::trace.info() << "DGtal trace"<<std::endl;
  polyscope::options::autocenterStructures = false;
  Eigen::VectorXd aVector(3);
  aVector << 1, 2, 3;

  directional::CartesianField rawFaceField;

  {
    //CGAL
    typedef CGAL::Simple_cartesian<double> Kernel;
    typedef Kernel::Point_2 Point_2;
    typedef Kernel::Segment_2 Segment_2;
    Point_2 p(1,1), q(10,10);
    std::cout << "p = " << p << std::endl;
    std::cout << "q = " << q.x() << " " << q.y() << std::endl;
    std::cout << "sqdist(p,q) = " << CGAL::squared_distance(p,q) << std::endl;
  }

  {
    //cinolib 
    //from 35_Poisson_sampling
    std::vector<cinolib::vec2d> samples_2d;
    cinolib::Poisson_sampling<2, cinolib::vec2d>(0.02f, cinolib::vec2d(0, 0), cinolib::vec2d(1, 1), samples_2d);
  }
  
  return 0;
}
