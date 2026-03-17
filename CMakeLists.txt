cmake_minimum_required(VERSION 3.28)
project(hello_cmake)

add_executable(${PROJECT_NAME} src/main.cpp)

# TODO: FetchContent on build?
add_library(SDL3 SHARED IMPORTED)
set_target_properties(SDL3 PROPERTIES
    IMPORTED_LOCATION "${CMAKE_SOURCE_DIR}/vendor/libSDL3.so.0.5.0"
    IMPORTED_SONAME "libSDL3.so.0"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_SOURCE_DIR}/includes"
)

target_link_libraries(${PROJECT_NAME} PRIVATE SDL3)

set_target_properties(${PROJECT_NAME} PROPERTIES
    BUILD_RPATH "${CMAKE_SOURCE_DIR}/vendor"
    INSTALL_RPATH "$ORIGIN/../vendor"
)