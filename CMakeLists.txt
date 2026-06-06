cmake_minimum_required(VERSION 3.28)

project(hello_cmake)

include(FetchContent)

FetchContent_Declare(
        SDL3
        GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
        GIT_TAG release-3.2.18
)

# Download and add SDL3 to the build
FetchContent_MakeAvailable(SDL3)

add_executable(${PROJECT_NAME}
        src/main.cpp
)

target_link_libraries(
        ${PROJECT_NAME}
        PRIVATE SDL3::SDL3
)