@echo off
setlocal
title Cyber Security Demonstration

set "SCRIPT_DIR=%~dp0"
set "PS_SCRIPT=%SCRIPT_DIR%CyberSecurityDemo.ps1"

if not exist "%PS_SCRIPT%" (
    echo CyberSecurityDemo.ps1 was not found.
    echo Make sure this BAT file is in the same folder as CyberSecurityDemo.ps1.
    pause
    exit /b 1
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PS_SCRIPT%"

echo.
pause
