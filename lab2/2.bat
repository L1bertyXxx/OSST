@echo off
setlocal enabledelayedexpansion

set "min="
set "max="

:input_loop

set/p "num=Enter num "

if "%num%"=="-" goto calculate

if not defined min (
    set "min=%num%"
    set "max=%num%"
    goto input_loop
)

if %num% lss !min! set "min=%num%"

if %num% gtr !max! set "max=%num%"

goto input_loop

:calculate
echo.
echo Results:
echo Minimum number: %min%
echo Maximum number: %max%

pause