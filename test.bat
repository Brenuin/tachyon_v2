@echo off
cd build
cmake --build . > nul
echo ============================
echo 🧪 Launching GLFW Test Window...
echo ============================
bin\Debug\glfwt.exe
pause
