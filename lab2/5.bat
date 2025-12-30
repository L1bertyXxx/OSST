@echo off

if %1 leq 0 goto exit
if %1 geq 50 goto exit
set /a n=%1
set /a f=%1

:begloop
if %n% == 1 goto loop
set /a n=n-1
set /a f=f*n
goto begloop

:loop
echo %1 !=%f%
exit /b

:exit
echo not correct parameter
exit /b