#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetBatchLines, -1                       ; Makes the script run faster
SetKeyDelay, 10, 10                     ; Makes script more relaible - I don't even know how it works tho.

#!m::Suspend, Toggle                    ; Sets WIN+ALT+M to enable and disable the hotkey so it doesn't mess up while typing
                                        ; # is WIN, ! is ALT, and m is M. You can go ahead check the AHK page for it for more information

w::                		        ; When w is pressed...
Loop, {
	If !GetKeyState("w", "p")       ; Checks if the key is "w" is pressed
		return			; Ends the loop off unless you wanna keep going up forever
	Send, {WheelUp}			; Sends a scroll up, like mouse scroll 1x times up.
	Sleep 60			; Gives a 60 millisecond delay, anymore than 60 millisecond and I can't guarantee the smoothness of your scrolling.
} 
return					; Shows that it's the end of the w key's script.

s::
Loop, {
	If !GetKeyState("s", "p") 
		return
	Send, {WheelDown}
	Sleep 60
} 
return

d::Send, {Right}			; In mangadex you can flip pages so I added in left and right so I can flip them pages.

a::Send, {Left}
