if(TARGET geogram)
    return()
endif()

include(CPM)

CPMAddPackage(
  NAME geogram
  GIT_TAG v1.9.0
  GITHUB_REPOSITORY "BrunoLevy/geogram"
)
