; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

;** START SPOTIFY VOLUME/PLAYBACK CONTROL **

SetTitleMatchMode 2 

; <Win>-F7 for previous track
#F7::
{
	DetectHiddenWindows, On
	ControlSend, ahk_parent, ^{Left}, ahk_class SpotifyMainWindow
	DetectHiddenWindows, Off
	return
}

; <Win>-F8 for next track
#F8:: 
{ 
	DetectHiddenWindows, On
	ControlSend, ahk_parent, ^{Right}, ahk_class SpotifyMainWindow
	DetectHiddenWindows, Off
	return
} 

; <Win>-F9 for pause
#F9::
{ 
	DetectHiddenWindows, On
	ControlSend, ahk_parent, {space}, ahk_class SpotifyMainWindow
	DetectHiddenWindows, Off
	return
} 


; <Win>-F11 for volume up
#F11::
{ 
	DetectHiddenWindows, On
	ControlSend, ahk_parent, ^{Up}, ahk_class SpotifyMainWindow
	DetectHiddenWindows, Off
	return
} 

; <Win>-F10 for volume down
#F10::
{ 
	DetectHiddenWindows, On
	ControlSend, ahk_parent, ^{Down}, ahk_class SpotifyMainWindow
	DetectHiddenWindows, Off
	return
} 

;** END SPOTIFY VOLUME/PLAYBACK CONTROL **

;** BEGIN CUSTOM GENERAL WINDOWS FUNCTIONALITY ENHANCEMENTS **

; <Ctrl>-<Shift>-C will take any text in clipboard & search in DuckDuckGo
^+c::
{
	Send, ^c
	Sleep 50
	Run, https://duckduckgo.com/?q=%clipboard%
	Return
}

; <Win>-X to run Command Prompt
#x::
{
	Run cmd.exe
	Return
}

; <Win>-C to run Calculator
#c::
{
	Run calc.exe
	Return
}

; <Win>-V to run GVim
#v::
{
	Run "C:\Program Files (x86)\Vim\vim74\GVim.exe"
	Return
}

;** END CUSTOM GENERAL WINDOWS FUNCTIONALITY ENHANCEMENTS **

;** BEGIN WORK SPECIFIC SHORTCUTS **

; <Ctrl>-<Shift>-, to scp shortcut
^+,::
{
	Send, scp lalligood@12.164.113.103:~/txdata/CS/
	Return
}

; <Ctrl>-<Shift>-/ to login in rx30
^+/::
{
;	Send, tds0008@rx30.com`nuFLg4t0rs`n
;	Send, tds0008@rx30.com`nvGMh5u1st`n
	Send, tds0008@rx30.com`nwHNi6v2tu`n
	Return
}

;** END WORK SPECIFIC SHORTCUTS **
