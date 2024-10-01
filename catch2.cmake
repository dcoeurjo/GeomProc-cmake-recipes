# -----------------------------------------------------------------------------
# Fetching Catch2 (only if the BUILD_TESTING variable has been set to true)
# -----------------------------------------------------------------------------

if (TARGET Catch2)
  return()
endif()

include(CPM)

CPMAddPackage("gh:catchorg/Catch2@2.13.7")
