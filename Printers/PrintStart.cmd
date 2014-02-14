@echo off
color 79
mode con cols=55 lines=30 >nul
echo.
NET START spooler
echo.
pause
exit
