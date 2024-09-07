@echo off
title Installer Wizard
color 0A

:MENU
cls
echo =============================================
echo Welcome to the Installer Wizard
echo =============================================
echo.
echo 1. Web Browsers
echo 2. Messaging
echo 3. Media
echo 4. Runtimes
echo 5. Imaging
echo 6. Documents
echo 7. Security
echo 8. File Sharing
echo 9. Online Storage
echo 10. Other
echo 11. Utilities
echo 12. Compression
echo 13. Developer Tools
echo 14. Credits
echo 15. Exit
echo.

set /p choice="Enter your choice (1-15): "

if "%choice%"=="14" goto Credits
if "%choice%"=="15" exit

set "category="
if "%choice%"=="1" set "category=browsers"
if "%choice%"=="2" set "category=messaging"
if "%choice%"=="3" set "category=media"
if "%choice%"=="4" set "category=runtimes"
if "%choice%"=="5" set "category=imaging"
if "%choice%"=="6" set "category=documents"
if "%choice%"=="7" set "category=security"
if "%choice%"=="8" set "category=file_sharing"
if "%choice%"=="9" set "category=online_storage"
if "%choice%"=="10" set "category=other"
if "%choice%"=="11" set "category=utilities"
if "%choice%"=="12" set "category=compression"
if "%choice%"=="13" set "category=developer_tools"

if defined category (
    goto ShowPrograms
)

goto MENU

:ShowPrograms
cls
echo =============================================
echo Welcome to the Installer Wizard
echo =============================================
echo.
echo Select a program to install from the %category% category:
echo.

setlocal enabledelayedexpansion

set count=1
for /f "tokens=1,* delims=," %%a in (assets/groups/%category%.txt) do (
    echo !count!. %%a
    set "program[!count!]=%%b"
    set /a count+=1
)

echo.
set /p program_choice="Enter the number of the program you want to install: "

if defined program[%program_choice%] (
    cls
    echo =============================================
    echo Welcome to the Installer Wizard
    echo =============================================
    echo Opening: !program[%program_choice%]!
    start !program[%program_choice%]!
    timeout /t 10
) else (
    cls
    echo =============================================
    echo Welcome to the Installer Wizard
    echo =============================================
    echo Invalid choice, please try again.
    timeout /t 2
)

goto MENU

:Credits
cls
echo =============================================
echo Welcome to the Installer Wizard
echo =============================================
echo.
echo Installer Wizard created by Your Name.
echo Special thanks to all contributors and software developers.
echo.
pause
cls
goto MENU
