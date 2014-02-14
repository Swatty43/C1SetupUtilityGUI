@echo off
color 79
mode con cols=80 lines=40 >nul
title HP Printer Installer
echo Installing HP Printer
set PrinterName=%1
set PrinterIP=%2
echo.
echo You entered: %PrinterName% for printer name and %PrinterIP% for IP address.
echo.
echo.
if EXIST "C:\Software\Printers\HPPCL6" (
Cscript "C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %PrinterIP% -h %PrinterIP%
rundll32 printui.dll,PrintUIEntry /if /b "%PrinterName%" /f "C:\Software\Printers\HPPCL6\hpcu155u.inf" /r "%PrinterIP%" /m "HP Universal Printing PCL 6"
pause
exit
	) else (
md C:\Software\Printers
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/HPPCL6.zip -O "C:\Software\Printers\HPPCL6.zip"
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\7za.exe" X "C:\Software\Printers\HPPCL6.zip" -oC:\Software\Printers
del "C:\Software\Printers\HPPCL6.zip"
Cscript "C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %PrinterIP% -h %PrinterIP%
rundll32 printui.dll,PrintUIEntry /if /b "%PrinterName%" /f "C:\Software\Printers\HPPCL6\hpcu155u.inf" /r "%PrinterIP%" /m "HP Universal Printing PCL 6"
pause
exit
)
