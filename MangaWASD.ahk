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

;DllCall("Sleep",UInt,SPEED)			;Precise Sleep Function to Wait SPEED milliseconds
SPEED:=69								          ;The delay time

#!m::Suspend, Toggle

+d::Send, {Right}

+a::Send, {Left}

+w::
While GetKeyState("W") && GetKeyState ("Shift") {
	Send {Wheelup}
	DllCall("Sleep",UInt,SPEED)
}
Return

+s::
While GetKeyState("S") && GetKeyState ("Shift") {
	Send {Wheeldown}
	DllCall("Sleep",UInt,SPEED)
}
Return
