@echo off
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Players-Plugins\QuickTimeInstaller.exe" /extract "C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Players-Plugins"
msiexec.exe /I "C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Players-Plugins\QuickTime.msi" /passive DESKTOP_SHORTCUTS=NO SCHEDULE_ASUW=0 ASUWINSTALLED=0
msiexec.exe /I "C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Players-Plugins\AppleSoftwareUpdate.msi" /qn
msiexec.exe /I "C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Players-Plugins\AppleApplicationSupport.msi" /qn
schtasks /delete /tn "Apple\AppleSoftwareUpdate" /f
pause
