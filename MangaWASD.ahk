;OPTIMIZATIONS START             ;Sum random script optimization taken from https://www.autohotkey.com/boards/viewtopic.php?t=6413
#NoEnv                           ;I don't even know what half the shit does tho.
#MaxHotkeysPerInterval 99000000  ;All I care is that now it work's with more than 50 ms delays
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
;OPTIMIZATIONS END

SPEED:=26					;The default delay time
boolL:=0					;Just a random torf int variable

#!m::Suspend, Toggle				;Suspends the script by pressing WIN+ALT+M

#!l::						;Enables 5 Wheel for SHIFT+A and SHIFT+D
if (boolL==0) {
	boolL:=1
} else if (boolL==1) {
	boolL:=0
} return

;Calls up an input system to enable dynamic speed changing without reloading the script. Defaults to 26.
#!s::InputBox, SPEED, Speed Setting, Enter Speed, , 192, 144, , , , 10, %SPEED%

;Sends the right arrow on SHIFT+D press if 5 Wheel disabled [WIN+ALT+L] (made for sites with list view). Sends 5 wheeldown when 5 Wheel enabled
+d::
if (boolL==0) {
	Send, {Right}
} else if (boolL==1) {
	Send, {WheelDown 5}
} return

;Sends the left arrow on SHIFT+A press if 5 Wheel disabled [WIN+ALT+L] (made for sites with list view). Sends 5 wheelup when 5 Wheel enabled
+a::
if (boolL==0) {
	Send, {Left}
} else if (boolL==1) {
	Send, {WheelUp 5}
} return

+w::						;Sends the up arrow on hotkey press
While GetKeyState("W") && GetKeyState ("Shift") {
	sleep speed
	Send {up}
}
Return

+s::						;Sends the down arrow on hotkey press
While GetKeyState("S") && GetKeyState ("Shift") {
	sleep speed
	Send {down}
}
Return
