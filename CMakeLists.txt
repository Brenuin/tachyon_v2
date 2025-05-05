cmake_minimum_required(VERSION 3.22)
project(tachyon_v2 LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# GLFW include and lib paths
include_directories("C:/Libraries/glfw-3.4.bin.WIN64/include")
link_directories("C:/Libraries/glfw-3.4.bin.WIN64/lib-vc2022")

# ======== MAIN EXECUTABLE ========
add_executable(main
    src/main/main.cpp
    src/cuda/test_cuda.cu
)
target_link_libraries(main glfw3 opengl32 gdi32)

# ======== VISUAL TEST ========
add_executable(glfwt tests/glfwt.cpp)
target_link_libraries(glfwt glfw3 opengl32 gdi32)

# ======== VECTOR UNIT TEST ========
add_executable(vectort tests/vectort.cpp)

# ======== MAIN TEST RUNNER ========
add_executable(main_test tests/main_test.cpp)

