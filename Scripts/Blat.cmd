@echo off
color 79
mode con cols=80 lines=40 >nul
title Email
echo.
set email=%1
echo.
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\blat320\full\blat.exe" -body "Bug Report:" -attach "C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Bug*.txt" -to mike.swatek@synergy55.com -f %email% -subject "C1 Setup Utility Bug Report" -server domino.synergy55.com -port 25
exit
