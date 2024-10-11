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
  OPTIONS
    "CGAL_CMAKE_EXACT_NT_BACKEND BOOST_BACKEND"
  DOWNLOAD_ONLY YES
)

set(CGAL_DIR ${CGAL_local_SOURCE_DIR})
message(STATUS "[cgal] CGAL_DIR: ${CGAL_DIR}")

#We only rely on Boost for multiprecision.
#If you want to use the system-wide GMP or MPFR, you need to set this variable to "Default")

set(CGAL_CMAKE_EXACT_NT_BACKEND "BOOST_BACKEND")
message(STATUS "[cgal] CGAL_CMAKE_EXACT_NT_BACKEND: ${CGAL_CMAKE_EXACT_NT_BACKEND}")
find_package(CGAL REQUIRED)
message(STATUS "[cgal] CGAL_CMAKE_EXACT_NT_BACKEND: ${CGAL_CMAKE_EXACT_NT_BACKEND}")

# Boost and its components
find_package(Boost REQUIRED)

if(NOT Boost_FOUND)
  message(STATUS "[cgal] This project requires the Boost library.")
  return()
endif()
