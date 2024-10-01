if (TARGET geometry-central)
  return()
endif()

CPMAddPackage(
  NAME geometry-centeral
  GIT_TAG master
  GITHUB_REPOSITORY "nmwsharp/geometry-central"
)
