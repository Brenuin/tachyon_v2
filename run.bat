@echo off
cd build
cmake --build . > nul
echo =========================
echo 🚀 Launching Simulation...
echo =========================
bin\Debug\main.exe
pause
