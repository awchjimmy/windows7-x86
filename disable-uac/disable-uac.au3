#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         awchjimmy

 Script Function:
	Disable UAC

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

; Disable UAC
RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA", "REG_DWORD", 0)

; Read the value of "EnableLUA" registry key
$enableLUA = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA")

; Check if UAC is enabled or disabled
If $enableLUA = 1 Then
    MsgBox(64, "UAC Status", "UAC is currently enabled.")
ElseIf $enableLUA = 0 Then
    MsgBox(64, "UAC Status", "UAC is currently disabled.")
Else
    MsgBox(16, "Error", "Failed to read UAC status.")
EndIf
