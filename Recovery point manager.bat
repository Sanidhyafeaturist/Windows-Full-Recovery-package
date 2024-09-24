@echo off
title System Recovery Point Manager
echo.
echo This script will manage system recovery points.
echo.

:: Get the current date and time for the backup filename
for /f "tokens=1-3 delims=/: " %%a in ("%date% %time%") do (
    set "timestamp=%%a-%%b-%%c_%%d-%%e-%%f"
)

:: Create a recovery point
echo Creating recovery point...
wbadmin start backup -backupTarget:D: -include:C: -quiet

if %errorlevel% neq 0 (
    echo Failed to create recovery point.
) else (
    echo Recovery point created successfully with timestamp: %timestamp%
)

echo.
:: List existing recovery points
echo Listing existing recovery points...
wbadmin get versions

echo.
echo Recovery point management completed. Review any messages above.
pause
