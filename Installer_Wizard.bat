@echo off
color 0A
setlocal enabledelayedexpansion

:MainMenu
cls
echo Welcome to the Installer Wizard
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
echo.
set /p option=Select a category (1-13): 

if "%option%"=="1" set category=browsers
if "%option%"=="2" set category=messaging
if "%option%"=="3" set category=media
if "%option%"=="4" set category=runtimes
if "%option%"=="5" set category=imaging
if "%option%"=="6" set category=documents
if "%option%"=="7" set category=security
if "%option%"=="8" set category=file_sharing
if "%option%"=="9" set category=online_storage
if "%option%"=="10" set category=other
if "%option%"=="11" set category=utilities
if "%option%"=="12" set category=compression
if "%option%"=="13" set category=developer_tools

if not defined category (
    echo Invalid choice. Press Enter to continue...
    pause >nul
    goto MainMenu
)

call :DisplayCategory
goto MainMenu

:DisplayCategory
cls
echo !category!
echo.
setlocal enabledelayedexpansion
set "validChoice=false"

rem Display the list of applications
for /f "tokens=1,2 delims=," %%a in (assets/groups/%category%.txt) do (
    echo %%a
)

echo.
set /p choice=Enter the name of the program to install or type "back" to return to the main menu: 

rem Check if the user wants to go back to the main menu
if /i "%choice%"=="back" goto MainMenu

rem Check if the choice is valid and start the download
for /f "tokens=1,2 delims=," %%a in (assets/groups/%category%.txt) do (
    if /i "%choice%"=="%%a" (
        set "validChoice=true"
        start "" "%%b"
        goto :EOF
    )
)

if not "!validChoice!"=="true" (
    echo Invalid choice. Press Enter to continue...
    pause >nul
    goto DisplayCategory
)

endlocal
