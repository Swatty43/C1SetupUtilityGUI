@echo off
color 79
mode con cols=80 lines=40 >nul
echo.
PING 1.1.1.1 -n 2 -w 1.0 >NUL
echo Ketarin will download and install the following:
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo 7Zip, Adobe Reader, CCleaner, CutePDF Writer,
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo Defraggler, FileZilla, Google Drive, Java,
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo Malwarebytes, Quicktime, Speccy, SuperAntiSpyware
PING 1.1.1.1 -n 2 -w 40.0 >NUL
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Ketarin\Ketarin.exe" /install="C:\Users\%username%\Desktop\C1SetupUtility\Files\Ketarin\NewTemp.xml" /exit
echo Above programs should now be installed.
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo.
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Software\googletalk-setup.exe" /S
echo Google Talk Should be installed!
echo.
echo File Convert will now install!
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Software\FileFormatConverters\O12Conv.msi" /qn
echo.
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo Now will download and install Office 2000 Pro w/o Outlook.
PING 1.1.1.1 -n 2 -w 40.0 >NUL
echo.
md C:\Software
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\wget.exe" --no-check-cert https://dl.dropboxusercontent.com/u/7344516/O9PROCD01.zip -O "C:\Software\O9PROCD01.zip"
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\7za.exe" X "C:\Software\O9PROCD01.zip" -oC:\Software\
del "C:\Software\O9PROCD01.zip"
"C:\Software\O9PROCD01\setup.exe" TRANSFORMS="C:\Software\O9PROCD01\SetupFile.MST" /qn+
echo.
echo Please wait while Office finishes installing!
echo.
ping 1.1.1.1 -n 1 -w 50000 > nul
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\nircmd.exe" shortcut "C:\Program Files (x86)\Microsoft Office\Office\EXCEL.EXE" "C:\Users\%username%\Desktop" "Microsoft Excel"
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\nircmd.exe" shortcut "C:\Program Files (x86)\Microsoft Office\Office\POWERPNT.EXE" "C:\Users\%username%\Desktop" "Microsoft PowerPoint"
"C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\nircmd.exe" shortcut "C:\Program Files (x86)\Microsoft Office\Office\WINWORD.exe" "C:\Users\%username%\Desktop" "Microsoft Word"
pause
exit
