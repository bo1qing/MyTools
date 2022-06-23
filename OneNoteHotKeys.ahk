#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode , 2
; SetKeyDelay , 1
#If WinActive("OneNote")

; toggle drawing and selection (d)
d::
MouseGetPos, StartX, StartY
MouseClick, left,473,87
MouseMove %StartX%, %StartY%
return

; pen (f), need in draw mode
f::
MouseGetPos, StartX, StartY
MouseClick,left,274,87
MouseMove %StartX%, %StartY%
return

; eraser (e), need in draw mode
e::
MouseGetPos, StartX, StartY
MouseClick,left,234,87
MouseMove %StartX%, %StartY%
return

; select (s), need in draw mode
s::
MouseGetPos, StartX, StartY
MouseClick,left,154,87
MouseMove %StartX%, %StartY%
return

; ; undo (z)
; z::
; MouseGetPos, StartX, StartY
; MouseClick,left,35,87
; MouseMove %StartX%, %StartY%
; return
; #If

; ; redo (y)
; y::
; MouseGetPos, StartX, StartY
; MouseClick,left,72,87
; MouseMove %StartX%, %StartY%
; return

;change eraser to stroke mode (3), need not in erasor mode
3::
MouseGetPos, StartX, StartY
MouseClick,left,234,87
MouseClick,left,234,87
MouseClick,left,280,170
MouseMove %StartX%, %StartY%
return

;change eraser to pixel mode (4), need not in erasor mode
4::
MouseGetPos, StartX, StartY
MouseClick,left,234,87
MouseClick,left,234,87
MouseClick,left,280,214
MouseMove %StartX%, %StartY%
return


; toggle hotkeys (ctrl d)
#If
^d::
Suspend
Pause,, 1
Return