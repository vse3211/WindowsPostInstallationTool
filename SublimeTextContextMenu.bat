@echo off
title Sublime Text Context Menu Manager

:menu
cls
echo Created by https://www.reddit.com/r/SublimeText/comments/1gatzbk/add_sublime_text_to_contextmenu_windows_bat/
echo.
echo Sublime Text Context Menu Manager
echo.
echo 1. Add Sublime Text to Context Menu
echo 2. Remove Sublime Text from Context Menu
echo 3. Exit
echo.
set /p choice="Choose an option (1-3): "

if "%choice%"=="1" goto add
if "%choice%"=="2" goto remove
if "%choice%"=="3" goto exit

echo Invalid choice. Please try again.
timeout /t 2 /nobreak >nul
goto menu

:add
cls
echo Adding Sublime Text to Context Menu...
SET sublimePath=C:\Program Files\Sublime Text\sublime_text.exe

:: Add context menu entry for all file types
reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text" /v "" /t REG_SZ /d "Open with Sublime Text" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text" /v "Icon" /t REG_EXPAND_SZ /d "%sublimePath%,0" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /v "" /t REG_SZ /d "%sublimePath% \"%%1\"" /f

:: Add context menu entry for directories
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text" /v "" /t REG_SZ /d "Open with Sublime Text" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text" /v "Icon" /t REG_EXPAND_SZ /d "%sublimePath%,0" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text\command" /v "" /t REG_SZ /d "%sublimePath% \"%%1\"" /f

:: Add context menu entry for directory background in Explorer
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /v "" /t REG_SZ /d "Open with Sublime Text" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /v "Icon" /t REG_EXPAND_SZ /d "%sublimePath%,0" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /v "" /t REG_SZ /d "%sublimePath% \"%%V\"" /f

echo.
echo Sublime Text has been added to the context menu.
pause
goto menu

:remove
cls
echo Removing Sublime Text from Context Menu...

:: Remove context menu entry for all file types
reg delete "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text" /f

:: Remove context menu entry for directories
reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with Sublime Text" /f

:: Remove context menu entry for directory background in Explorer
reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text" /f

echo.
echo Sublime Text has been removed from the context menu.
pause
goto menu

exit