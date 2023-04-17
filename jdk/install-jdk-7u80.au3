; AutoIt script to install JDK 7u80 (i586) silently

; Define constants
Global Const $JDKInstaller = "jdk-7u80-windows-i586.exe"
Global Const $JavaHome = "C:\Program Files\Java\jdk1.7.0_80"

; Run JDK installer
Run($JDKInstaller)

; Wait for JDK installer window to appear
WinWaitActive("Java SE Development Kit 7 Update 80 - Setup", "This wizard will guide you through")

; Click the Next button
Send("!n")

; Wait for JDK installer window to appear
WinWaitActive("Java SE Development Kit 7 Update 80 - Custom Setup", "Select optional features to install")

; Click the Next button
Send("!n")

; Wait for JDK installer window to appear
WinWaitActive("Java Setup - Destination Folder", "Install to:")

; Click the Next button
Send("!n")

; Wait for JDK installer window to appear
WinWaitActive("Java SE Development Kit 7 Update 80 - Complete")

; Click the Close button
Send("{Enter}")

; Set Java Home environment variable
;EnvSet("JAVA_HOME", $JavaHome, 1)
