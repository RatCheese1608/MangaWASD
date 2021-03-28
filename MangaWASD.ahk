#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetBatchLines, -1                      ;Makes the script run faster
SetKeyDelay, 10, 10 

#!m::Suspend, Toggle

w::
Loop, {
	If !GetKeyState("w", "p") 
		return
	Send, {WheelUp}
	Sleep 60
} 
return

s::
Loop, {
	If !GetKeyState("s", "p") 
		return
	Send, {WheelDown}
	Sleep 60
} 
return

d::Send, {Right}

a::Send, {Left}
