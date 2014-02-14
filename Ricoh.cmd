@echo off
color 79
mode con cols=80 lines=40 >nul
title Ricoh Printer Installer
echo Instaling Ricoh Printer
set PrinterName=%1
set PrinterIP=%2
echo.
echo You entered: %PrinterName% for printer name and %PrinterIP% for IP address.
echo.
echo.
IF EXIST "C:\Software\Printers\RicohPCL6" (
Cscript "C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %PrinterIP% -h %PrinterIP%
rundll32.exe printui.dll,PrintUIEntry /if /b "%PrinterName%" /f "C:\Software\Printers\RicohPCL6\oemsetup.inf" /r "%PrinterIP%" /m "Ricoh"
pause
exit
	) else (
md C:\Software\Printers
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/PrinterDrivers/RicohPCL6.zip -O "C:\Software\Printers\RicohPCL6.zip"
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\7za.exe" X "C:\Software\Printers\RicohPCL6.zip" -oC:\Software\Printers
del "C:\Software\Printers\RicohPCL6.zip"
Cscript "C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printing Admin Scripts\prnport.vbs" -a -r %PrinterIP% -h %PrinterIP%
rundll32.exe printui.dll,PrintUIEntry /if /b "%PrinterName%" /f "C:\Software\Printers\RicohPCL6\oemsetup.inf" /r "%PrinterIP%" /m "Ricoh"
pause
exit
)
