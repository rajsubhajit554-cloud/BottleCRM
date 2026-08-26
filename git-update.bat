@echo off
title BottleCRM - Git Update Tool
cd /d "%~dp0"

echo ======================================================
echo           BottleCRM - 1-Click Git Update Tool
echo ======================================================
echo.

echo [1/3] Checking current Git status...
git status
echo.

set /p msg="Commit message likhun (or press ENTER for automatic message): "
if "%msg%"=="" set msg=Update: %date% %time%

echo.
echo [2/3] Adding changes and committing...
git add .
git commit -m "%msg%"

echo.
echo [3/3] Pushing to GitHub (origin main)...
git push origin main

echo.
if %errorlevel% equ 0 (
    echo ======================================================
    echo   [SUCCESS] GitHub a update shofolbhabe push hoyeche!
    echo ======================================================
) else (
    echo ======================================================
    echo   [FAILED] Kono shomosshya hoyeche, internet/git check korun.
    echo ======================================================
)

echo.
pause
