if (TARGET geometry-central)
  return()
endif()

include(CPM)

CPMAddPackage(
  NAME geometry-centeral
  GIT_TAG 70c859ec3b58fe597c0063673a74082654e9c5aa
  GITHUB_REPOSITORY "nmwsharp/geometry-central"
)
