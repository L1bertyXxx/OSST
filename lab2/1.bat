@echo off

IF "%~1"=="" (
    echo Folder not found
    exit /b
)

IF "%~2"=="" (
    echo Extension not found
    exit /b
)

echo Searching for *.%2 files in %1:
echo.

for %%f in ("%~1"\*.%2) do (
    echo %%~nxf
)

pause
