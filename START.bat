@echo off
REM ==================================================
REM AI Browser Automation Pro - Quick Launcher
REM ==================================================

echo.
echo ╔════════════════════════════════════════════════╗
echo ║   AI BROWSER AUTOMATION PRO - LAUNCHER         ║
echo ║   Advanced Lead Generation System              ║
echo ╚════════════════════════════════════════════════╝
echo.
echo [*] Checking dependencies...
echo [*] If this is the first run, execute INSTALL.bat first
echo.

echo [*] Starting server...
echo [*] Please wait while browser loads...
echo.

node server.js

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Server failed to start!
    echo.
    echo [*] Make sure dependencies are installed.
    echo [*] Run: INSTALL.bat
    echo.
    pause
    exit /b 1
)

echo.
echo [*] Server started successfully!
echo.
pause
