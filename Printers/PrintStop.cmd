@echo off
color 79
mode con cols=55 lines=30 >nul
echo.
NET STOP spooler
echo.
pause
exit
