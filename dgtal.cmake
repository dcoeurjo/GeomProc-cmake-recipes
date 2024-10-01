if (TARGET DGtal)
  return()
endif()

include(CPM)

message(STATUS "Fetching DGtal")
SET(BUILD_EXAMPLES OFF)

CPMAddPackage(
  NAME DGtal
  GITHUB_REPOSITORY "DGtal-team/DGtal"
  GIT_TAG 16bdcf9d542b81d4ebf2734f942ef86f4cdfa011
)

include("${DGtal_BINARY_DIR}/DGtalConfig.cmake")
include_directories("${DGTAL_INCLUDE_DIRS}")
