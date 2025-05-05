@echo off
setlocal enabledelayedexpansion

echo ===============================
echo 🔍 Printing Selected Files
echo ===============================

:: ==== FILE FLAGS ====
set PRINT_main=true
set PRINT_runbat=false
set PRINT_cmake=true

:: ==== FOLDER FLAGS ====
set PRINT_folder_core=true
set PRINT_folder_collision=false
set PRINT_folder_cuda=true
set PRINT_folder_particles=false
set PRINT_folder_render=false
set PRINT_folder_rigid=false
set PRINT_folder_spatial=false
set PRINT_folder_systems=false
set PRINT_folder_world=false
set PRINT_folder_constraint=false

:: ==== Root Files ====
echo [DEBUG] Checking root file flags...

if "%PRINT_main%"=="true" (
    echo === [src/main/main.cpp] ===
    type src\main\main.cpp
    echo.
)

if "%PRINT_runbat%"=="true" (
    echo === [run.bat] ===
    type run.bat
    echo.
)

if "%PRINT_cmake%"=="true" (
    echo === [CMakeLists.txt] ===
    type CMakeLists.txt
    echo.
)

:: ==== INCLUDE SUBFOLDERS ====
if "%PRINT_folder_core%"=="true" (
    echo [DEBUG] Calling PrintFolder include/core
    call :PrintFolder include\core "include/core"
)

if "%PRINT_folder_collision%"=="true" (
    echo [DEBUG] Calling PrintFolder include/collision
    call :PrintFolder include\collision "include/collision"
)

if "%PRINT_folder_cuda%"=="true" (
    echo [DEBUG] Calling PrintFolder include/cuda
    call :PrintFolder include\cuda "include/cuda"
)

if "%PRINT_folder_particles%"=="true" (
    echo [DEBUG] Calling PrintFolder include/particles
    call :PrintFolder include\particles "include/particles"
)

if "%PRINT_folder_render%"=="true" (
    echo [DEBUG] Calling PrintFolder include/render
    call :PrintFolder include\render "include/render"
)

if "%PRINT_folder_rigid%"=="true" (
    echo [DEBUG] Calling PrintFolder include/rigid
    call :PrintFolder include\rigid "include/rigid"
)

if "%PRINT_folder_spatial%"=="true" (
    echo [DEBUG] Calling PrintFolder include/spatial
    call :PrintFolder include\spatial "include/spatial"
)

if "%PRINT_folder_systems%"=="true" (
    echo [DEBUG] Calling PrintFolder include/systems
    call :PrintFolder include\systems "include/systems"
)

if "%PRINT_folder_world%"=="true" (
    echo [DEBUG] Calling PrintFolder include/world
    call :PrintFolder include\world "include/world"
)

if "%PRINT_folder_constraint%"=="true" (
    echo [DEBUG] Calling PrintFolder include/constraint
    call :PrintFolder include\constraint "include/constraint"
)

:: ==== SRC SUBFOLDERS ====
if "%PRINT_folder_core%"=="true" (
    echo [DEBUG] Calling PrintFolder src/core
    call :PrintFolder src\core "src/core"
)

if "%PRINT_folder_collision%"=="true" (
    echo [DEBUG] Calling PrintFolder src/collision
    call :PrintFolder src\collision "src/collision"
)

if "%PRINT_folder_cuda%"=="true" (
    echo [DEBUG] Calling PrintFolder src/cuda
    call :PrintFolder src\cuda "src/cuda"
)

if "%PRINT_folder_particles%"=="true" (
    echo [DEBUG] Calling PrintFolder src/particles
    call :PrintFolder src\particles "src/particles"
)

if "%PRINT_folder_render%"=="true" (
    echo [DEBUG] Calling PrintFolder src/render
    call :PrintFolder src\render "src/render"
)

if "%PRINT_folder_rigid%"=="true" (
    echo [DEBUG] Calling PrintFolder src/rigid
    call :PrintFolder src\rigid "src/rigid"
)

if "%PRINT_folder_spatial%"=="true" (
    echo [DEBUG] Calling PrintFolder src/spatial
    call :PrintFolder src\spatial "src/spatial"
)

if "%PRINT_folder_systems%"=="true" (
    echo [DEBUG] Calling PrintFolder src/systems
    call :PrintFolder src\systems "src/systems"
)

if "%PRINT_folder_world%"=="true" (
    echo [DEBUG] Calling PrintFolder src/world
    call :PrintFolder src\world "src/world"
)

if "%PRINT_folder_constraint%"=="true" (
    echo [DEBUG] Calling PrintFolder src/constraint
    call :PrintFolder src\constraint "src/constraint"
)

echo.
echo ✅ Done printing files.
pause
goto :eof

:: ==== Helper Function ====
:PrintFolder
set "TARGETFOLDER=%~1"
set "PRINTLABEL=%~2"
echo.
echo [DEBUG] Entering :PrintFolder for "%PRINTLABEL%" at "%TARGETFOLDER%"
echo === [%PRINTLABEL%] ===

set "FOUND=false"

for /f "delims=" %%F in ('dir /b "%TARGETFOLDER%\*.h" 2^>nul') do (
    echo --- %TARGETFOLDER%\%%F
    type "%TARGETFOLDER%\%%F"
    echo.
    set "FOUND=true"
)

for /f "delims=" %%F in ('dir /b "%TARGETFOLDER%\*.cpp" 2^>nul') do (
    echo --- %TARGETFOLDER%\%%F
    type "%TARGETFOLDER%\%%F"
    echo.
    set "FOUND=true"
)

for /f "delims=" %%F in ('dir /b "%TARGETFOLDER%\*.cu" 2^>nul') do (
    echo --- %TARGETFOLDER%\%%F
    type "%TARGETFOLDER%\%%F"
    echo.
    set "FOUND=true"
)

if "%FOUND%"=="false" (
    echo [DEBUG] No .h/.cpp/.cu files found in "%TARGETFOLDER%"
)
goto :eof
