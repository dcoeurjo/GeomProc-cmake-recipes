if (TARGET cinolib)
  return()
endif()

include(CPM)

#Disabling OpenGL, GLFW and ImGui (maybe in conflict with polysdcope)
option(CINOLIB_USES_OPENGL_GLFW_IMGUI "GUI in cinolib" OFF)

CPMAddPackage(
  NAME cinolib
  GIT_TAG 8174c95b590d083b3699e4af95901c51344266ec
  GITHUB_REPOSITORY "mlivesu/cinolib"
)

add_library(cinolib INTERFACE)
target_include_directories(cinolib INTERFACE ${cinolib_SOURCE_DIR}/include)