if (TARGET CGAL::CGAL)
  return()
endif()

message(STATUS "Third-party (external): creating target 'CGAL::CGAL' (Boost required)")
include(CPM)

# Using a different CPM target to avoid conflicts with the main CGAL targets
CPMAddPackage(
  NAME CGAL_local
  VERSION 6.0
  GITHUB_REPOSITORY "CGAL/cgal"
  DOWNLOAD_ONLY YES
)

set(CGAL_DIR ${CGAL_LOCAL_SOURCE_DIR})
message(STATUS "[cgal] CGAL_DIR: ${CGAL_DIR}")
find_package(CGAL REQUIRED)

# Boost and its components
find_package(Boost REQUIRED)

if(NOT Boost_FOUND)
  message(STATUS "[cgal] This project requires the Boost library.")
  return()
endif()
