@echo off
setlocal enabledelayedexpansion

REM Check the first argument provided to the script
if "%~1"=="jekyll" (
    echo Running Jekyll build...
    jekyll build -s temp/pages -d output
    goto :eof
)

if "%~1"=="clean" (
    echo Cleaning up directories...

    REM For each directory you want to delete, repeat the following block
    if exist ".\input-cache\" (
        rmdir /s /q ".\input-cache"
        echo Removed: .\input-cache
    )
    if exist ".\temp\" (
        rmdir /s /q ".\temp"
        echo Removed: .\temp
    )
    if exist ".\output\" (
        rmdir /s /q ".\output"
        echo Removed: .\output
    )
    if exist ".\template\" (
        rmdir /s /q ".\template"
        echo Removed: .\template
    )
    goto :eof
)

REM If none of the conditions matched, print an error message
echo Invalid argument. Please use "debug jekyll" or "debug clean".