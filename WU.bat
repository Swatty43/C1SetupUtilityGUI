@echo off
color 79
mode con cols=100 lines=60 >nul
echo.
echo This will search,download, and install Windows Updates.
CSCRIPT "C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\WU.vbs"
pause
exit
