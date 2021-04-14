#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; SetBatchLines, -1                       ;Makes the script run faster
; SetKeyDelay, 10, 10 		 	  ;Makes Script more reliable
SPEED:=21				  ;The actual speed is 2 times of this  

#!m::Suspend, Toggle			  ;Pause or Unpause script with WIN(#)+ALT(!)+M

+d::Send, {Right}			  ;Page turn right with SHIFT+D

+a::Send, {Left}			  ;Page turn left with SHIFT+A

+w::					  ;Page scroll up with SHIFT+W
Loop {
Sleep SPEED
If !GetKeyState("w") || !GetKeyState("Shift")
	return
Send {Wheelup}
Sleep SPEED
}
return

+s::					  ;Page scroll up with SHIFT+S
Loop {
Sleep SPEED
If !GetKeyState("s") || !GetKeyState("Shift")
	return
Send {WheelDown}
Sleep SPEED
}
return
