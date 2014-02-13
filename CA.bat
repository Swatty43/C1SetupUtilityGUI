@echo off
mode con cols=80 lines=60 >nul
color 79
echo.
xcopy "C:\Users\%username%\Desktop\C1SetupUtility\Files\Favorites\CA\Employee Links" "C:\Users\%username%\Favorites\Links\Employee links" /q /y
xcopy "C:\Users\%username%\Desktop\C1SetupUtility\Files\Favorites\CA\Bookmarks" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default" /q /y
regedit.exe /s "C:\Users\%username%\Desktop\C1SetupUtility\Files\Favorites\IEStart.reg"
xcopy "C:\Users\%username%\Desktop\C1SetupUtility\Files\Favorites\master_preferences" "C:\Program Files (x86)\Google\Chrome\Application"
xcopy "C:\Users\%username%\Desktop\C1SetupUtility\Files\Favorites\Preferences" "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default" /q /y
pause
exit
