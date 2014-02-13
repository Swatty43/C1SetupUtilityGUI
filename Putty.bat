@echo off
color 79
mode con cols=65 lines=40 >nul
echo.
echo Copying PUTTY folder to program files
echo Copying shortcut to desktop
echo Running reg file
echo Replacing Host file
xcopy "C:\Users\%username%\Desktop\C1SetupUtility\Files\Putty" "C:\Program Files\Putty" /q /y
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\nircmd.exe" shortcut "C:\Program Files\Putty\mxp.bat" "C:\Users\%username%\Desktop" "MXP" "C:\Windows\explorer.exe" "C:\Program Files\Putty\MXP.ico" "" "" "C:\Program Files\Putty" ""
regedit.exe /s "C:\Users\%username%\Desktop\C1SetupUtility\Files\Putty\putty.reg"
xcopy /y "C:\Users\%username%\Desktop\C1SetUpUtility\Files\Putty\hosts" "C:\Windows\System32\drivers\etc"
pause
exit

