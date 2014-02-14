@echo off
mode con cols=80 lines=60 >nul
color 79
echo.
echo Will run all commands to uninstall bloatware!
MsiExec.exe /X{F761359C-9CED-45AE-9A51-9D6605CD55C4} /quiet /norestart
MsiExec.exe /X{18455581-E099-4BA8-BC6B-F34B2F06600C} /quiet /norestart
MsiExec.exe /X{44E9D4C2-946C-4378-9354-558803C47A68} /qn
"C:\Program Files (x86)\Google\Google Toolbar\Component\GoogleToolbarManager_08875ABF44579E20.exe" /uninstall
"C:\Program Files (x86)\Google\Google Toolbar\Component\GoogleToolbarManager_EAA6E347FFC35CC8.exe" /uninstall
"C:\Program Files (x86)\Google\Google Toolbar\Component\GoogleToolbarManager_231F3FD17DB59CFD.exe" /uninstall
MsiExec.exe /X{6707C034-ED6B-4B6A-B21F-969B3606FBDE} /quiet /norestart
MsiExec.exe /X{13F59938-C595-479C-B479-F171AB9AF64F} /quiet /norestart
MsiExec.exe /X{2DC26D10-CC6A-494F-BEA3-B5BC21126D5E} /quiet /norestart
MsiExec.exe /X{3849486C-FF09-4F5D-B491-3E179D58EE15} /quiet /norestart
MsiExec.exe /X{07E55FB8-966C-4FA5-815D-D1F5AC8B1D87} /quiet /norestart
MsiExec.exe /X{4C39DEA1-F78D-4B8A-8EC9-DCC6FE18D644} /quiet /norestart
MsiExec.exe /X{8E0790DA-185E-4DC1-8A88-750B2A6218FD} /quiet /norestart
"C:\Program Files (x86)\SugarSync\uninstall.exe" /uninstall
MsiExec.exe /X{FE044230-9CA5-43F7-9B58-5AC5A28A1F33} /quiet /norestart
MsiExec.exe /X{95140000-0070-0000-0000-0000000FF1CE} /quiet /norestart
MsiExec.exe /X{90150000-0138-0409-0000-0000000FF1CE} /quiet /norestart
MsiExec.exe /X{E8D46836-CD55-453C-A107-A59EC51CB8DC} /quiet /norestart
MsiExec.exe /X{F02F4A8B-1A5F-45B8-9B74-AAF21A2B1BCC} /quiet /norestart
MsiExec.exe /X{4C39DEA1-F78D-4B8A-8EC9-DCC6FE18D644} /quiet /norestart
MsiExec.exe /X{0A3E232E-D3A7-4A67-A428-E9471274D395} /quiet /norestart
MsiExec.exe /X{F02F4A8B-1A5F-45B8-9B74-AAF21A2B1BCC} /quiet /norestart
MsiExec.exe /X{FD4EC278-C1B1-4496-99ED-C0BE1B0AA521} /quiet /norestart
MsiExec.exe /X{35E1FF5F-E8E1-4DE2-B3EC-BBE296B27336} /quiet /norestart
MsiExec.exe /X{D60E3A84-5DDC-49ED-B9A5-E3466996EB36} /quiet /norestart
MsiExec.exe /X{DD00F699-6861-4DCF-A19F-8CF61E5E28ED} /quiet /norestart
MsiExec.exe /X{0B0F231F-CE6A-483D-AA23-77B364F75917} /quiet /norestart
MsiExec.exe /X{BF601122-9F0A-41A9-BA06-3158D9FB4B80} /quiet /norestart
MsiExec.exe /X{2A3FC24C-6EC0-4519-A52B-FDA4EA9B2D24} /quiet /norestart
MsiExec.exe /X{E5B21F11-6933-4E0B-A25C-7963E3C07D11} /quiet /norestart
MsiExec.exe /X{1F6AB0E7-8CDD-4B93-8A23-AA9EB2FEFCE4} /quiet /norestart
MsiExec.exe /X{40F4FF7A-B214-4453-B973-080B09CED019} /quiet /norestart
"C:\Program Files (x86)\Windows Live\Installer\wlarp.exe" /cleanup:all /q
"C:\Program Files\Windows Live\Installer\wlarp.exe" /cleanup:all /q
"C:\ProgramData\Package Cache\{64dedc6d-57a3-44c8-a211-4079e38ac141}\nitro_pro9.exe"  /uninstall
echo Evernote should be uninstalled!
echo Google Toolbar should be uninstalled!
echo Lenovo Reg Should be uninstalled!
echo Lenovo Welcome should be uninstaled!
echo Message Center Plus should be uninstalled!
echo Nitro PDF should be uninstalled!
echo SugarSync should be uninstalled!
echo Windows Live Essentials should be uninstalled!
echo Office should be uninstalled!
echo VIP Access should be uninstalled!
echo.
echo Will now try and uninstall Google Toolbar 
echo and Nitro Pro if they weren't
PING 1.1.1.1 -n 5 -w 1000 >NUL
echo.
echo Making sure Google Toolbar was removed
wmic /interactive:off product where name="Google Toolbar for Internet Explorer" uninstall
"C:\Program Files (x86)\Google\Google Toolbar\Component\GoogleToolbarManager_08875ABF44579E20.exe" /uninstall
echo.
echo Now checking to see if Nitro Pro has been removed
wmic /interactive:off product where name="Nitro Pro 8" uninstall
wmic /interactive:off product where name="Nitro Pro 9" uninstall
"C:\ProgramData\Package Cache\{64dedc6d-57a3-44c8-a211-4079e38ac141}\nitro_pro9.exe"  /uninstall
pause
exit
