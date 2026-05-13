@echo off
setlocal

set SCRIPT_DIR=%~dp0
for %%I in ("%SCRIPT_DIR%..\..") do set REPO_ROOT=%%~fI

set INPUT_ROM=%REPO_ROOT%\NHL '94 (USA).sfc
set OUTPUT_ROM=%REPO_ROOT%\tmpbuild\32TeamNHL94.sfc
set PATCH_FILE=%SCRIPT_DIR%patch.asm
set ASAR_EXE=%REPO_ROOT%\ASAR\windows\asar.exe

if not exist "%REPO_ROOT%\tmpbuild" mkdir "%REPO_ROOT%\tmpbuild"
if errorlevel 1 goto :error

copy /Y "%INPUT_ROM%" "%OUTPUT_ROM%"
if errorlevel 1 goto :error

"%ASAR_EXE%" "%PATCH_FILE%" "%OUTPUT_ROM%"
if errorlevel 1 goto :error

echo.
echo Patched ROM created: %OUTPUT_ROM%
exit /b 0

:error
echo.
echo Patch build failed.
exit /b 1