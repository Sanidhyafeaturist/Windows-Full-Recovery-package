@echo off
REM Check if the current OS is Hiren's Boot CD

REM Define a variable to check the OS name
set "osName=%OS%"

REM Check for Hiren's Boot CD
if /I "%osName%"=="Hiren's Boot CD" (
    echo Hiren's Boot CD detected. Running scripts...
    
    REM List of batch scripts to run
    call Partition Recover utility.bat
    call Windows Bootloader repair utility.bat
    call Recovery point manager.bat

) else (
    echo This is not Hiren's Boot CD. Exiting.
    exit /B
)

REM End of script
