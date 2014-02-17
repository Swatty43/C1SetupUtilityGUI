#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.1
	Author: Mike Swatek

	Script Function:
	C1 Setup Utility

#ce ----------------------------------------------------------------------------
#RequireAdmin
#include <GUIConstantsEx.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <FontConstants.au3>
#include <MsgBoxConstants.au3>
#include <ColorConstants.au3>
#include <Process.au3>
; Script Start - Add your code below here
Global $GUI , $hGUI1 = 9999, $hGUI2 = 9999, $hButton1 = 9999, $hGUI3 = 9999, $hGUI4 = 9999, $hGUI5 = 9999, $hGUI6 = 9999, $hGUI7 = 9999, $hGUI8 = 9999, $hGUI9 = 9999, $hGUI10 = 9999
Global $hButton2 = 9999, $hButton3 = 9999, $hButton4 = 9999, $hButton5 = 9999, $hButton6 = 9999, $hButton7 = 9999, $hButton8 = 9999, $hButton9 = 9999, $hButton10 = 9999, $hButton11 = 9999
Global $hButton12 = 9999, $hButton13 = 9999, $hButton14 = 9999, $hButton15 = 9999, $hButton16 = 9999, $hButton17 = 9999, $hButton18 = 9999, $hButton19 = 9999, $hButton20 = 9999
Global $hButton21 = 9999, $hButton22 = 9999, $hButton23 = 9999, $hButton24 = 9999, $hButton25 = 9999, $hButton26 = 9999, $hButton27 = 9999, $hButton28 = 9999, $hButton29 = 9999
Global $hButton30 = 9999, $hButton31 = 9999, $hButton32 = 9999, $hButton33 = 9999, $hButton34 = 9999, $hButton35 = 9999, $hButton36 = 9999, $hButton37 = 9999
Global $Gui1MenuFile = 9999, $Gui1FileExit = 9999, $Gui1MenuHelp = 9999, $Gui1MenuAbout = 9999, $Gui1MenuInfo = 9999, $Gui2MenuFile = 9999, $Gui2FileExit = 9999, $Gui2MenuHelp = 9999, $Gui2MenuAbout = 9999, $Gui2MenuInfo = 9999, $Gui2MenuPro = 9999
Global $Gui2MenuUni = 9999, $Gui2MenuExp = 9999, $Gui2MenuAuto = 9999, $Gui2MenuCC = 9999
Global $Gui3MenuFile = 9999, $Gui3FileExit = 9999, $Gui3MenuHelp = 9999, $Gui3MenuAbout, $Gui3MenuInfo = 9999
Global $hGui6FileMenu = 9999, $hGui6FileExit = 9999, $hGui6MenuHelp = 9999, $hGui6MenuAbout = 9999, $hGui6MenuHost = 9999
Global $name, $IP, $PrinterName, $PrinterIP, $MyBox6 = 9999
gui1()
Func gui1() ;C1 Uninstaller
Opt("ExpandEnvStrings", 1)
$tempo=2000
$tamanhox=@DesktopWidth*0.46875
$tamanhoy=$tamanhox/2
$posicaox=(@DesktopWidth/2)-($tamanhox/2)
$posicaoy=(@DesktopHeight/2)-($tamanhoy)
splashImageOn("","C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\composite_one.gif",$tamanhox,$tamanhoy,$posicaox,$posicaoy,1)
$GUI = GUICreate ("", $tamanhox, $tamanhoy, $posicaox, $posicaoy,$WS_POPUP, BitOR ($WS_EX_TRANSPARENT, $WS_EX_LAYERED, $WS_EX_TOPMOST))
$label = GUICtrlCreateLabel("Created by MDS", $posicaox+($tamanhox/6), $posicaoy/($tamanhoy), $tamanhox/3, $tamanhoy/3,$SS_CENTER,0)
GUICtrlSetFont(-1,12,$tamanhox/30)
WinSetTrans ($GUI, "", 50)
GUISetBkColor(0xffffff, $GUI)
GUISetState(@SW_SHOW,$GUI)
Sleep($tempo)
GUISetState(@SW_HIDE,$GUI)
SplashOff()
	$hGUI1 = GUICreate("C1 Setup Utility", 772, 399, 297, 178)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui1MenuFile = GUICtrlCreateMenu("&File")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui1FileExit = GUICtrlCreateMenuItem("Exit", $Gui1MenuFile)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui1MenuHelp = GUICtrlCreateMenu("&Help")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui1MenuAbout = GUICtrlCreateMenuItem("About", $Gui1MenuHelp)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui1MenuInfo = GUICtrlCreateMenuItem("Info", $Gui1MenuHelp)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 769, 377)
	$Pic2 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\Composite-One-300x280Grey.gif", 24, 88, 233, 193)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetFont(12, 800, 0, "Terminal")
	$Label1 = GUICtrlCreateLabel("Welcome to the C1 Setup Utility", 192, 16, 407, 20)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$Label2 = GUICtrlCreateLabel("This program will allow you to setup and confingure new PC's", 200, 32, 404, 21)
	GUICtrlSetFont(-1, 11, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$Label3 = GUICtrlCreateLabel("1.", 317, 112, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton1 = GUICtrlCreateButton("Enable/Config Admin", 341, 112, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label4 = GUICtrlCreateLabel("2.", 504, 112, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton2 = GUICtrlCreateButton("Uninstall Bloat", 525, 113, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label5 = GUICtrlCreateLabel("3.", 317, 147, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton3 = GUICtrlCreateButton("NRT", 341, 146, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label6 = GUICtrlCreateLabel("4.", 504, 147, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton4 = GUICtrlCreateButton("C1 Installer", 525, 147, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label7 = GUICtrlCreateLabel("5.", 317, 180, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton5 = GUICtrlCreateButton("MyUnistaller", 341, 179, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label8 = GUICtrlCreateLabel("6.", 504, 181, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton6 = GUICtrlCreateButton("", 525, 180, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUISetState()
	While 1
		$aMsg = GUIGetMsg(1) ; Use advanced parameter to get array
		Switch $aMsg[1] ; check which GUI sent the message
			Case $hGUI1
				Switch $aMsg[0] ; Now check for the messages for $hGUI1
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we exit <<<<<<<<<<<<<<<
						ExitLoop
					Case $Gui1MenuFile
					Case $Gui1FileExit
						Exit
					Case $Gui1MenuHelp
					Case $Gui1MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $Gui1MenuInfo
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton1
						Run(@ComSpec & " /c @echo off && color 79 && echo This will enable admin and set password to franklin && echo. && net user administrator /active:yes && net user administrator franklin && pause", "", @SW_SHOW)
					Case $hButton2
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\DeCrap.bat", "", @SW_SHOW)
					Case $hButton3
						RunAs("Administrator", "", "franklin", "", @DesktopDir & "\C1SetupUtility\Files\Programs\Software\Norton_Removal_Tool.exe")
					Case $hButton4
						GUICtrlSetState($hButton4, $GUI_DISABLE)
						gui2()
					Case $hButton5
						RunAs("Administrator", "", "franklin", "", @DesktopDir & "\C1SetupUtility\Files\Programs\Software\myuninst.exe")
					Case $hButton6
						ShellExecuteWait(@DesktopDir & "\C1SetupUtility\Files\Programs\Other\1.bat", "", @SW_SHOW)
						ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Other\Full.cmd")
				EndSwitch
			Case $hGUI2
				Switch $aMsg[0] ; Now check for the messages for $hGUI2
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI2)
						GUICtrlSetState($hButton4, $GUI_ENABLE)
					Case $Gui2MenuFile
					Case $Gui2FileExit
						GUIDelete($hGUI2)
						GUICtrlSetState($hButton4, $GUI_ENABLE)
					Case $Gui2MenuHelp
					Case $Gui2MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $Gui2MenuInfo
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $Gui2MenuAuto
						RunWait(RunAs("Administrator", "", "franklin", "", @DesktopDir & "\C1SetupUtility\Files\Tools\Sysinternals\autoruns.exe"))
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $Gui2MenuCC
						RunWait(Run("C:\Program Files\CCleaner\CCleaner64.exe /registry"))
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $Gui2MenuExp
						RunWait(RunAs("Administrator", "", "franklin", "", @DesktopDir & "\C1SetupUtility\Files\Tools\Sysinternals\procexp.exe"))
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $Gui2MenuUni
						RunWait(RunAs("Administrator", "", "franklin", "", @DesktopDir & "\C1SetupUtility\Files\Programs\Software\myuninst.exe"))
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $hButton7
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\Installer.bat", "", @SW_SHOW)
					Case $hButton8
						RunWait(LogMeIn())
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $hButton9
						RunWait(NOD32())
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $hButton10
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\Putty.bat", "", @SW_SHOW)
					Case $hButton11
						RunWait(WG())
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $hButton12
						GUICtrlSetState($hButton12, $GUI_DISABLE)
						gui3()
					Case $hButton13
						gui5()
					Case $hButton14
						gui4()
					Case $hButton15
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\wu.bat", "", @SW_SHOW)
				EndSwitch
			Case $hGUI3
				Switch $aMsg[0] ; Now check for the messages for $hGUI3
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI3)
						GUICtrlSetState($hButton12, $GUI_ENABLE)
					Case $Gui3MenuFile
					Case $Gui3FileExit
						GUIDelete($hGUI3)
						GUICtrlSetState($hButton12, $GUI_ENABLE)
					Case $Gui3MenuHelp
					Case $Gui3MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $Gui3MenuInfo
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton16
						gui6()
					Case $hButton17
						gui7()
					Case $hButton18
						gui8()
					Case $hButton19
						gui9()
					Case $hButton20
						gui10()
					Case $hButton21
						ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\PrintStop.cmd")
					Case $hButton22
						ShellExecuteWait(@DesktopDir & "\C1SetupUtility\Files\Programs\Other\1.bat", "", @SW_SHOW)
						ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Programs\Other\Full.cmd")
					Case $hButton23
						ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\PrintStart.cmd")
				EndSwitch
			Case $hGUI4
				Switch $aMsg[0] ; Now check for the messages for $hGUI4
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI4)
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $hButton24
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\Laptop.bat", "", @SW_SHOW)
					Case $hButton25
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\Desktop.bat", "", @SW_SHOW)
				EndSwitch
			Case $hGUI5
				Switch $aMsg[0] ; Now check for the messages for $hGUI5
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI5)
						GUICtrlSetState($hGUI2, $GUI_ENABLE)
					Case $hButton26
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\US.bat", "", @SW_SHOW)
					Case $hButton27
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\CA.bat", "", @SW_SHOW)
				EndSwitch
			Case $hGUI6
				Switch $aMsg[0] ; Now check for the messages for $hGUI6
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI6)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6FileMenu
					Case $hGui6FileExit
						GUIDelete($hGUI6)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6MenuHelp
					Case $hGui6MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $hGui6MenuHost
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton28
						HP()
					Case $hButton29
						GUIDelete($hGUI6)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
				EndSwitch
			Case $hGUI7
				Switch $aMsg[0] ; Now check for the messages for $hGUI7
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI7)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6FileMenu
					Case $hGui6FileExit
						GUIDelete($hGUI7)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6MenuHelp
					Case $hGui6MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $hGui6MenuHost
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton30
						Canon()
					Case $hButton31
						GUIDelete($hGUI7)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
				EndSwitch
			Case $hGUI8
				Switch $aMsg[0] ; Now check for the messages for $hGUI8
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI8)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6FileMenu
					Case $hGui6FileExit
						GUIDelete($hGUI8)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6MenuHelp
					Case $hGui6MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $hGui6MenuHost
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton32
						Ricoh()
					Case $hButton33
						GUIDelete($hGUI8)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
				EndSwitch
			Case $hGUI9
				Switch $aMsg[0] ; Now check for the messages for $hGUI9
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI9)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6FileMenu
					Case $hGui6FileExit
						GUIDelete($hGUI9)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6MenuHelp
					Case $hGui6MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $hGui6MenuHost
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton34
						Sharp()
					Case $hButton35
						GUIDelete($hGUI9)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
				EndSwitch
			Case $hGUI10
				Switch $aMsg[0] ; Now check for the messages for $hGUI10
					Case $GUI_EVENT_CLOSE ; If we get the CLOSE message from this GUI - we just delete the GUI <<<<<<<<<<<<<<<
						GUIDelete($hGUI10)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6FileMenu
					Case $hGui6FileExit
						GUIDelete($hGUI10)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
					Case $hGui6MenuHelp
					Case $hGui6MenuAbout
						MsgBox(64, "About", "C1 Setup Utility®" & @CRLF & "Version 3.0" & @CRLF & @CRLF & @CRLF & "Created by Mike Swatek" & @CRLF & "©2014 Composites One. All rights reserved.")
					Case $hGui6MenuHost
						ShellExecute(@DesktopDir & "\C1SetupUtility\Files\Scripts\HostTable.txt")
					Case $hButton36
						Xerox()
					Case $hButton37
						GUIDelete($hGUI10)
						GUICtrlSetState($hGUI3, $GUI_ENABLE)
				EndSwitch
		EndSwitch
	WEnd
EndFunc   ;==>gui1
Func gui2() ;C1 Installer
	Opt("ExpandEnvStrings", 1)
	$hGUI2 = GUICreate("C1 Installer", 772, 399, 297, 178)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuFile = GUICtrlCreateMenu("&File")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2FileExit = GUICtrlCreateMenuItem("Exit", $Gui2MenuFile)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuPro = GUICtrlCreateMenu("&Programs")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuAuto = GUICtrlCreateMenuItem("Autoruns", $Gui2MenuPro)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuCC = GUICtrlCreateMenuItem("CCleaner", $Gui2MenuPro)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuExp = GUICtrlCreateMenuItem("Process Explorer", $Gui2MenuPro)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuUni = GUICtrlCreateMenuItem("MyUninstaller", $Gui2MenuPro)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuHelp = GUICtrlCreateMenu("&Help")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuAbout = GUICtrlCreateMenuItem("About", $Gui2MenuHelp)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui2MenuInfo = GUICtrlCreateMenuItem("Info", $Gui2MenuHelp)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 769, 377)
	$Pic2 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\Composite-One-300x280Grey.gif", 24, 88, 233, 193)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetFont(12, 800, 0, "Terminal")
	$Label1 = GUICtrlCreateLabel("Welcome to the C1 Installer", 224, 16, 355, 20)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$Label2 = GUICtrlCreateLabel("This program will allow you to install software", 264, 32, 301, 21)
	GUICtrlSetFont(-1, 11, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$Label3 = GUICtrlCreateLabel("1.", 333, 80, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton7 = GUICtrlCreateButton("Ketarin Installer", 357, 80, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label5 = GUICtrlCreateLabel("2.", 333, 115, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton8 = GUICtrlCreateButton("LogMeIn", 357, 114, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label7 = GUICtrlCreateLabel("3.", 333, 148, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton9 = GUICtrlCreateButton("NOD32", 357, 147, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label9 = GUICtrlCreateLabel("4.", 333, 178, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton10 = GUICtrlCreateButton("MXP", 357, 178, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label11 = GUICtrlCreateLabel("5.", 333, 213, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton11 = GUICtrlCreateButton("WG MVPN", 357, 212, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label4 = GUICtrlCreateLabel("6.", 520, 80, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton12 = GUICtrlCreateButton("Printers", 549, 81, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label6 = GUICtrlCreateLabel("7.", 520, 115, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton13 = GUICtrlCreateButton("Favorites", 549, 115, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label8 = GUICtrlCreateLabel("8.", 520, 149, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton14 = GUICtrlCreateButton("Power-Tweaks", 549, 148, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$hLabel10 = GUICtrlCreateLabel("9.", 520, 178, 29, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton15 = GUICtrlCreateButton("Win Updates", 549, 179, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUISetState()
EndFunc   ;==>gui2
Func gui3() ;C1 Printer Installer
	Opt("ExpandEnvStrings", 1)
	$hGUI3 = GUICreate("C1 Printer Installer", 772, 399, 297, 178)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui3MenuFile = GUICtrlCreateMenu("&File")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui3FileExit = GUICtrlCreateMenuItem("Exit", $Gui3MenuFile)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui3MenuHelp = GUICtrlCreateMenu("&Help")
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui3MenuAbout = GUICtrlCreateMenuItem("About", $Gui3MenuHelp)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Gui3MenuInfo = GUICtrlCreateMenuItem("Info", $Gui3MenuHelp)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 769, 377)
	$Pic2 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\Composite-One-300x280Grey.gif", 24, 88, 233, 193)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetFont(12, 800, 0, "Terminal")
	$Label1 = GUICtrlCreateLabel("Welcome to the C1 Printer Installer", 160, 16, 459, 20)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$Label2 = GUICtrlCreateLabel("This program will allow you to install network printers", 224, 32, 356, 21)
	GUICtrlSetFont(-1, 11, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$Label3 = GUICtrlCreateLabel("1.", 333, 112, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton16 = GUICtrlCreateButton("HP", 357, 112, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label4 = GUICtrlCreateLabel("2.", 520, 112, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton17 = GUICtrlCreateButton("Canon", 541, 113, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label5 = GUICtrlCreateLabel("3.", 333, 147, 19, 26)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton18 = GUICtrlCreateButton("Ricoh", 357, 146, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label6 = GUICtrlCreateLabel("4.", 520, 147, 19, 26)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	$hButton19 = GUICtrlCreateButton("Sharp", 541, 147, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label7 = GUICtrlCreateLabel("5.", 333, 180, 19, 26)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	$hButton20 = GUICtrlCreateButton("Xerox", 357, 179, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label8 = GUICtrlCreateLabel("6.", 520, 181, 19, 26)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	$hButton21 = GUICtrlCreateButton("Kill PrnSpl", 541, 180, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$hButton22 = GUICtrlCreateButton("", 357, 210, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	$Label9 = GUICtrlCreateLabel("7.", 333, 210, 19, 26)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	$Label10 = GUICtrlCreateLabel("8.", 520, 210, 19, 26)
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	GUICtrlSetFont(-1, 14, 800, 0, "Times New Roman")
	$hButton23 = GUICtrlCreateButton("Start PrnSpl", 541, 211, 123, 25)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUISetState()
EndFunc   ;==>gui3
Func gui4() ;Power Tweaks
	Opt("ExpandEnvStrings", 1)
	$hGUI4 = GUICreate("Power Tweaks", 258, 74, 600, 250)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 257, 73)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hButton24 = GUICtrlCreateButton("Laptop", 34, 20, 83, 33)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 8, 800, 0, "Times New Roman")
	$hButton25 = GUICtrlCreateButton("Desktop", 138, 20, 83, 33)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 8, 800, 0, "Times New Roman")
	GUISetState()
EndFunc   ;==>gui4
Func gui5() ;Favorites
	Opt("ExpandEnvStrings", 1)
	$hGUI5 = GUICreate("Favorites", 258, 74, 600, 250)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 257, 73)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hButton26 = GUICtrlCreateButton("USA", 34, 20, 83, 33)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 8, 800, 0, "Times New Roman")
	$hButton27 = GUICtrlCreateButton("CANADA", 138, 20, 83, 33)
	GUICtrlSetOnEvent(-1, "On_Button") ; Call a common button function
	GUICtrlSetFont(-1, 8, 800, 0, "Times New Roman")
	GUISetState()
EndFunc   ;==>gui5
Func gui6() ; HP Printer Wizard
	Opt("ExpandEnvStrings", 1)
	$hGUI6 = GUICreate("HP Installer", 282, 198, 550, 300)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 281, 177)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6FileMenu = GUICtrlCreateMenu("&File")
	$hGui6FileExit = GUICtrlCreateMenuItem("Exit", $hGui6FileMenu)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6MenuHelp = GUICtrlCreateMenu("&Help")
	$hGui6MenuAbout = GUICtrlCreateMenuItem("About", $hGui6MenuHelp)
	$hGui6MenuHost = GUICtrlCreateMenuItem("Host Table", $hGui6MenuHelp)
	$PrinterName = GUICtrlCreateInput("", 109, 25, 165, 19)
	$Label1 = GUICtrlCreateLabel("Printer Name:", 13, 25, 83, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$PrinterIP = GUICtrlCreateInput("", 109, 65, 165, 19)
	$Label2 = GUICtrlCreateLabel("Printer IP:", 13, 64, 64, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton28 = GUICtrlCreateButton("Install", 114, 103, 70, 20)
	$hButton29 = GUICtrlCreateButton("Close", 196, 103, 70, 20)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUISetState()
EndFunc   ;==>gui6
Func gui7() ; Canon Printer Wizard
	Opt("ExpandEnvStrings", 1)
	$hGUI7 = GUICreate("Canon Installer", 282, 198, 550, 300)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 281, 177)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6FileMenu = GUICtrlCreateMenu("&File")
	$hGui6FileExit = GUICtrlCreateMenuItem("Exit", $hGui6FileMenu)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6MenuHelp = GUICtrlCreateMenu("&Help")
	$hGui6MenuAbout = GUICtrlCreateMenuItem("About", $hGui6MenuHelp)
	$hGui6MenuHost = GUICtrlCreateMenuItem("Host Table", $hGui6MenuHelp)
	$PrinterName = GUICtrlCreateInput("", 109, 25, 165, 19)
	$Label1 = GUICtrlCreateLabel("Printer Name:", 13, 25, 83, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$PrinterIP = GUICtrlCreateInput("", 109, 65, 165, 19)
	$Label2 = GUICtrlCreateLabel("Printer IP:", 13, 64, 64, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton30 = GUICtrlCreateButton("Install", 114, 103, 70, 20)
	$hButton31 = GUICtrlCreateButton("Close", 196, 103, 70, 20)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUISetState()
EndFunc   ;==>gui7
Func gui8() ; Ricoh Printer Wizard
	Opt("ExpandEnvStrings", 1)
	$hGUI8 = GUICreate("RicohInstaller", 282, 198, 550, 300)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 281, 177)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6FileMenu = GUICtrlCreateMenu("&File")
	$hGui6FileExit = GUICtrlCreateMenuItem("Exit", $hGui6FileMenu)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6MenuHelp = GUICtrlCreateMenu("&Help")
	$hGui6MenuAbout = GUICtrlCreateMenuItem("About", $hGui6MenuHelp)
	$hGui6MenuHost = GUICtrlCreateMenuItem("Host Table", $hGui6MenuHelp)
	$PrinterName = GUICtrlCreateInput("", 109, 25, 165, 19)
	$Label1 = GUICtrlCreateLabel("Printer Name:", 13, 25, 83, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$PrinterIP = GUICtrlCreateInput("", 109, 65, 165, 19)
	$Label2 = GUICtrlCreateLabel("Printer IP:", 13, 64, 64, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton32 = GUICtrlCreateButton("Install", 114, 103, 70, 20)
	$hButton33 = GUICtrlCreateButton("Close", 196, 103, 70, 20)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUISetState()
EndFunc   ;==>gui8
Func gui9() ; Sharp Printer Wizard
	Opt("ExpandEnvStrings", 1)
	$hGUI9 = GUICreate("Sharp Installer", 282, 198, 550, 300)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 281, 177)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6FileMenu = GUICtrlCreateMenu("&File")
	$hGui6FileExit = GUICtrlCreateMenuItem("Exit", $hGui6FileMenu)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6MenuHelp = GUICtrlCreateMenu("&Help")
	$hGui6MenuAbout = GUICtrlCreateMenuItem("About", $hGui6MenuHelp)
	$hGui6MenuHost = GUICtrlCreateMenuItem("Host Table", $hGui6MenuHelp)
	$PrinterName = GUICtrlCreateInput("", 109, 25, 165, 19)
	$Label1 = GUICtrlCreateLabel("Printer Name:", 13, 25, 83, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$PrinterIP = GUICtrlCreateInput("", 109, 65, 165, 19)
	$Label2 = GUICtrlCreateLabel("Printer IP:", 13, 64, 64, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton34 = GUICtrlCreateButton("Install", 114, 103, 70, 20)
	$hButton35 = GUICtrlCreateButton("Close", 196, 103, 70, 20)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUISetState()
EndFunc   ;==>gui9
Func gui10() ;Xerox Printer Wizard
	Opt("ExpandEnvStrings", 1)
	$hGUI10 = GUICreate("Xerox Installer", 282, 198, 550, 300)
	$Pic1 = GUICtrlCreatePic("C:\Users\%username%\Desktop\C1SetupUtility\Files\Tools\BG.jpg", 0, 0, 281, 177)
	GUICtrlSetState($Pic1, $GUI_DISABLE)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6FileMenu = GUICtrlCreateMenu("&File")
	$hGui6FileExit = GUICtrlCreateMenuItem("Exit", $hGui6FileMenu)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	$hGui6MenuHelp = GUICtrlCreateMenu("&Help")
	$hGui6MenuAbout = GUICtrlCreateMenuItem("About", $hGui6MenuHelp)
	$hGui6MenuHost = GUICtrlCreateMenuItem("Host Table", $hGui6MenuHelp)
	$PrinterName = GUICtrlCreateInput("", 109, 25, 165, 19)
	$Label1 = GUICtrlCreateLabel("Printer Name:", 13, 25, 83, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$PrinterIP = GUICtrlCreateInput("", 109, 65, 165, 19)
	$Label2 = GUICtrlCreateLabel("Printer IP:", 13, 64, 64, 19)
	GUICtrlSetFont(-1, 10, 800, 0, "Times New Roman")
	GUICtrlSetColor(-1, 0x0000FF)
	GUICtrlSetBkColor(-1, 0xC0C0C0)
	$hButton36 = GUICtrlCreateButton("Install", 114, 103, 70, 20)
	$hButton37 = GUICtrlCreateButton("Close", 196, 103, 70, 20)
	GUISetOnEvent($GUI_EVENT_CLOSE, "On_Close") ; Call a common GUI close function
	GUISetState()
EndFunc   ;==>gui10
Func LogMeIn()
	Opt("WinTitleMatchMode", -2)
	Run(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\LogMeIn.bat","","",@SW_HIDE)
	WinWaitActive("LogMeIn", "LogMeIn",3)
	ControlSend("LogMeIn", "Simply Connected","", "{ENTER}")
	WinWaitActive("LogMeIn", "Account",3)
	ControlSend("LogMeIn", "Account","","{ENTER}")
	WinWaitActive("LogMeIn License Agreement","LogMeIn - Terms & Conditions of Use",3)
	ControlSend("LogMeIn License Agreement","LogMeIn - Terms & Conditions of Use","","{ENTER}")
	WinWaitActive("LogMeIn", "Software options",3)
	ControlSend("LogMeIn", "Software options","","{TAB}")
	ControlSend("LogMeIn", "Software options","","{TAB}")
	ControlSend("LogMeIn", "Software options","","{ENTER}")
	WinWaitActive("LogMeIn", "Computer Description",3)
	ControlSend("LogMeIn", "Computer Description","","{ENTER}")
	WinWaitActive("LogMeIn","Power Management",3)
	ControlSend("LogMeIn","Power Management","","{ENTER}")
	WinWaitActive("LogMeIn", "Computer Access Code",3)
	ControlSend("LogMeIn", "Computer Access Code","","franklin")
	ControlSend("LogMeIn", "Computer Access Code","","{TAB}")
	ControlSend("LogMeIn", "Computer Access Code","","franklin")
	ControlSend("LogMeIn", "Computer Access Code","","{ENTER}")
	WinWaitActive("LogMeIn", "Enter your LogMeIn account information",3)
	ControlSend("LogMeIn", "Enter your LogMeIn account information","","logmein@synergy55.com")
	ControlSend("LogMeIn", "Enter your LogMeIn account information","","{TAB}")
	ControlSend("LogMeIn", "Enter your LogMeIn account information","","0CRa52")
	ControlSend("LogMeIn", "Enter your LogMeIn account information","","{TAB}")
	ControlSend("LogMeIn", "Enter your LogMeIn account information","","{UP}")
	ControlSend("LogMeIn", "Enter your LogMeIn account information","","{ENTER}")
	WinWaitActive("LogMeIn", "Choose Profile",3)
	ControlSend("LogMeIn", "Choose Profile","","{DOWN}")
	ControlSend("LogMeIn", "Choose Profile","","{ENTER}")
	WinWaitActive("LogMeIn", "Choose Destination Location",3)
	ControlSend("LogMeIn", "Choose Destination Location","","{ENTER}")
	WinWaitActive("LogMeIn", "Setup Completed",3)
	ControlSend("LogMeIn", "Setup Completed","","{TAB}")
	ControlSend("LogMeIn", "Setup Completed","","{TAB}")
	ControlSend("LogMeIn", "Setup Completed","","{SPACE}")
	ControlSend("LogMeIn", "Setup Completed","","{TAB}")
	ControlSend("LogMeIn", "Setup Completed","","{ENTER}")
	WinWaitActive("LogMeIn", "Enabled and Online",3)
	ControlSend("LogMeIn", "Enabled and Online",'',"{ENTER}")
EndFunc   ;==>LogMeIn
Func NOD32()
	Opt("WinTitleMatchMode", -2)
	Run(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\NOD32.bat", "","", @SW_HIDE)
	WinWaitActive("ESET Endpoint Antivirus Setup", "Welcome to ESET Endpoint Antivirus",3)
	Send("{ENTER}")
	WinWaitActive("ESET Endpoint Antivirus Setup", "End-User License Agreement",3)
	Send("{TAB}")
	Send("{TAB}")
	Send("{UP}")
	Send("{TAB}")
	Send("{TAB}")
	Send("{ENTER}")
	WinWaitActive("ESET Endpoint Antivirus Setup", "Installation mode",3)
	Send("{ENTER}")
	WinWaitActive("ESET Endpoint Antivirus Setup", "ESET Live Grid",3)
	Send("{ENTER}")
	WinWaitActive("ESET Endpoint Antivirus Setup", "Ready to Install",3)
	Send("{ENTER}")
	WinWaitActive("ESET Endpoint Antivirus Setup", "Completing",3)
	Send("{ENTER}")
EndFunc   ;==>NOD32
Func WG()
	Opt("WinTitleMatchMode", -2)
	Run(@DesktopDir & "\C1SetupUtility\Files\Scripts\Batch\WG.bat", "","", @SW_HIDE)
	WinWaitActive("Setup - Mobile VPN with SSL client", "Welcome",3)
	Send("{ENTER}")
	WinWaitActive("Setup - Mobile VPN with SSL client", "Select Destination Location",3)
	Send("{ENTER}")
	WinWaitActive("Setup - Mobile VPN with SSL client", "Select Components",3)
	Send("{ENTER}")
	WinWaitActive("Setup - Mobile VPN with SSL client", "Select Start Menu Folder",3)
	Send("{ENTER}")
	WinWaitActive("Setup - Mobile VPN with SSL client", "Select Additional Tasks",3)
	Send("{SPACE}")
	Send("{TAB}")
	Send("{TAB}")
	Send("{TAB}")
	Send("{ENTER}")
	WinWaitActive("Setup - Mobile VPN with SSL client", "Ready to Install",3)
	Send("{ENTER}")
	WinWaitActive("Windows Security", "You should only install driver software from publishers you trust.",3)
	Send("{TAB}")
	Send("{TAB}")
	Send("{TAB}")
	Send("{ENTER}")
	WinWaitActive("Setup - Mobile VPN with SSL client", "Completing",3)
	Send("{SPACE}")
	Send("{TAB}")
	Send("{ENTER}")
EndFunc   ;==>WG
Func HP()
	Opt("ExpandEnvStrings", 1)
	$MyBox6 = MsgBox(35, "Data Check", "Did you enter the information correctly?")
	If $MyBox6 == 6 Then
		ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\HP.cmd",'"' & GUICtrlRead($PrinterName) & '" "' & GUICtrlRead($PrinterIP) & '"')
		GUICtrlSetData($PrinterName, '')
		GUICtrlSetData($PrinterIP, '')
	ElseIf $MyBox6 == 2 Then
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
	Else
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
		gui6()
	EndIf

EndFunc   ;==>HP
Func Canon()
	Opt("ExpandEnvStrings", 1)
	$MyBox6 = MsgBox(35, "Data Check", "Did you enter the information correctly?")
	If $MyBox6 == 6 Then
		ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\Canon.cmd",'"' & GUICtrlRead($PrinterName) & '" "' & GUICtrlRead($PrinterIP) & '"')
		GUICtrlSetData($PrinterName, '')
		GUICtrlSetData($PrinterIP, '')
	ElseIf $MyBox6 == 2 Then
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
	Else
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
		gui6()
	EndIf

EndFunc   ;==>Canon
Func Ricoh()
	Opt("ExpandEnvStrings", 1)
	$MyBox6 = MsgBox(35, "Data Check", "Did you enter the information correctly?")
	If $MyBox6 == 6 Then
		ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\Ricoh.cmd",'"' & GUICtrlRead($PrinterName) & '" "' & GUICtrlRead($PrinterIP) & '"')
		GUICtrlSetData($PrinterName, '')
		GUICtrlSetData($PrinterIP, '')
	ElseIf $MyBox6 == 2 Then
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
	Else
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
		gui6()
	EndIf

EndFunc   ;==>Ricoh
Func Sharp()
	Opt("ExpandEnvStrings", 1)
	$MyBox6 = MsgBox(35, "Data Check", "Did you enter the information correctly?")
	If $MyBox6 == 6 Then
		ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\Sharp.cmd",'"' & GUICtrlRead($PrinterName) & '" "' & GUICtrlRead($PrinterIP) & '"')
		GUICtrlSetData($PrinterName, '')
		GUICtrlSetData($PrinterIP, '')
	ElseIf $MyBox6 == 2 Then
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
	Else
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
		gui6()
	EndIf

EndFunc   ;==>Sharp
Func Xerox()
	Opt("ExpandEnvStrings", 1)
	$MyBox6 = MsgBox(35, "Data Check", "Did you enter the information correctly?")
	If $MyBox6 == 6 Then
		ShellExecute("C:\Users\%username%\Desktop\C1SetupUtility\Files\Scripts\Printers\Xerox.cmd",'"' & GUICtrlRead($PrinterName) & '" "' & GUICtrlRead($PrinterIP) & '"')
		GUICtrlSetData($PrinterName, '')
		GUICtrlSetData($PrinterIP, '')
	ElseIf $MyBox6 == 2 Then
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
	Else
		GUIDelete($hGUI6)
		GUICtrlSetState($hGUI3, $GUI_ENABLE)
		gui6()
	EndIf

EndFunc   ;==>Xerox














