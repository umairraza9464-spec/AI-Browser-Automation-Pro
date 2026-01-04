@echo off
REM ==================================================
REM AI Browser Automation Pro - Windows Installer
REM ==================================================

echo.
echo ╔════════════════════════════════════════════════╗
echo ║   AI BROWSER AUTOMATION PRO - INSTALLER        ║
echo ║   Advanced Lead Generation System              ║
echo ╚════════════════════════════════════════════════╝
echo.
echo [*] Checking system requirements...

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Node.js is NOT installed!
    echo.
    echo [*] Please install Node.js from: https://nodejs.org/
    echo [*] Then run this installer again.
    echo.
    pause
    exit /b 1
)

echo [✓] Node.js found: 
node --version

echo.
echo [*] Checking npm...
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] npm is NOT found!
    pause
    exit /b 1
)

echo [✓] npm found: 
npm --version

echo.
echo [*] Installing dependencies...
echo [*] This may take 3-5 minutes. Please wait...
echo.

npm install

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Installation failed!
    echo.
    pause
    exit /b 1
)

echo.
echo ╔════════════════════════════════════════════════╗
echo ║   ✓ Installation Complete!                     ║
echo ╚════════════════════════════════════════════════╝
echo.
echo [*] Next steps:
echo  1. Double-click: START.bat
echo  2. Browser will open at: http://localhost:3000
echo  3. Select your city and start campaign!
echo.
echo [*] For more info, see: README.md
echo.
pause
