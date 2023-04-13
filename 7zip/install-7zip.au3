#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author: awchjimmy

 Script Function:
	Install 7zip on windows 7 x86

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <MsgBoxConstants.au3>

; run 7zip
Run("7z2201.exe")

; wait until active
WinWaitActive("7-Zip 22.01 Setup")

; click install
Send("!i")

; wait until installation complete
WinWaitActive("7-Zip 22.01 Setup", " is installed")

; click close
Send("{Enter}")
