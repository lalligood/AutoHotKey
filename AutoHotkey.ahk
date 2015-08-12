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

SetTitleMatchMode 2

;** START SPOTIFY VOLUME/PLAYBACK CONTROL **

; <Win>-F7 for previous track
#F7::Media_Prev

; <Win>-F8 for next track
#F8::Media_Next

; <Win>-F9 for pause
#F9::Media_Play_Pause

; <Win>-F10 for volume down
#F10::Volume_Down

; <Win>-F11 for volume up
#F11::Volume_Up

;** END SPOTIFY VOLUME/PLAYBACK CONTROL **

;** BEGIN AMAZON VOLUME/PLAYBACK CONTROL **
; <Ctrl>-F9 for pause
^F9::
    DetectHiddenWindows, On
    IfWinActive, ahk_class Amazon Music
{
    WinShow, ahk_class Amazon Music
    winactivate, ahk_class Amazon Music
    Send, {Esc}{Space},
    DetectHiddenWindows, Off
    return
}
    IfWinNotActive, ahk_class Amazon Music
{
    WinShow, ahk_class Amazon Music
    winactivate, ahk_class Amazon Music
    Sleep 100
    Send, {Esc}{Space},
    Sleep 100
    WinMinimize, ahk_class Amazon Music
    WinHide, ahk_class Amazon Music
    DetectHiddenWindows, Off
    return
}
;** END AMAZON VOLUME/PLAYBACK CONTROL **

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

; Prevent <Win>-<= or <Win>-=> from altering the size/location of windows
#Left::
{
    Return
}
#Right::
{
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
    ;Send, tds0008@rx30.com`nuFLg4t0rs`n
    ;Send, tds0008@rx30.com`nvGMh5u1st`n
    ;Send, tds0008@rx30.com`nwHNi6v2tu`n
    ;Send, tds0008@rx30.com`nyIOj7w3uv`n
    ;Send, tds0008@rx30.com`nyJPk8x4vw`n
    ;Send, tds0008@rx30.com`nzKQl9y5wx`n
    ;Send, tds0008@rx30.com`naLRm0z6xy`n
    ;Send, tds0008@rx30.com`nbMSn1a7yz`n
    ;Send, tds0008@rx30.com`ncNTo2b8za`n
    ;Send, tds0008@rx30.com`ndOUp3c9ab`n
    ;Send, tds0008@rx30.com`nePVq4d0bc`n
    ;Send, tds0008@rx30.com`nfQWr5e1cd`n
    ;Send, tds0008@rx30.com`ngRYs6f2de`n
    Send, tds0008@rx30.com`nhSZt7g3ef`n
    Return
}

; <Ctrl>-<Shift>-; to do java statement
^+;::
{
	Send, java -jar CentralSiteManager.jar -
	Return
}

; <Ctrl>-<Shift>-/ to login in ReportsRx
^+z::
{
    Send, ReportsRx30{!}`r
    Return
}

;** END WORK SPECIFIC SHORTCUTS **
