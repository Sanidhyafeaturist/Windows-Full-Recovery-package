@echo off
title Bootloader Repair Utility
echo.
echo Bootloader Repair Utility
echo ===========================
echo.

:: Check if the script is run as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as an administrator.
    pause
    exit /b
)

:: Repair the bootloader
echo Attempting to repair the bootloader...
echo.
bootrec /fixmbr
bootrec /fixboot
bootrec /scanos
bootrec /rebuildbcd

echo.
echo Bootloader repair process completed.
echo.
echo Running System File Checker (SFC)...
echo.
sfc /scannow

echo.
echo System File Checker scan completed.
echo.
pause
