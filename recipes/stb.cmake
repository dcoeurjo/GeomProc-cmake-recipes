if (TARGET stb)
  return()
endif()

message(STATUS "Third-party (external): creating target 'stb' ")
include(CPM)

CPMAddPackage(
  NAME stb
  GIT_TAG master
  GITHUB_REPOSITORY "nothings/stb"
  DOWNLOAD_ONLY YES
)

include_directories(${stb_SOURCE_DIR})
add_library(stb INTERFACE)
target_include_directories(stb INTERFACE ${stb_SOURCE_DIR})