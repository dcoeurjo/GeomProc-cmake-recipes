#
# Copyright 2019 Adobe. All rights reserved.
# This file is licensed to you under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License. You may obtain a copy
# of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under
# the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
# OF ANY KIND, either express or implied. See the License for the specific language
# governing permissions and limitations under the License.
#
if(TARGET directional::directional)
    return()
endif()

message(STATUS "Third-party (external): creating target 'directional'")

include(CPM)

CPMAddPackage(
    NAME local_directional
    GIT_TAG master
    GITHUB_REPOSITORY avaxman/Directional
)

# Define an interface library
add_library(directional INTERFACE)

# Specify the include directories for the header-only library
target_include_directories(directional INTERFACE
    ${local_directional_SOURCE_DIR}/include
)

message(STATUS "Third-party (external): creating target 'directional' for external path: ${local_directional_SOURCE_DIR}/include")
