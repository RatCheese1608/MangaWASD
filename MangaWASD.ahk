;OPTIMIZATIONS START
#NoEnv
#MaxHotkeysPerInterval 99000000
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

#Persistent
#UseHook
enable:=false
Mode2:=false
OnOff:=false
speed:=60					;The default delay time

#f1:: Reload

#!l:: Mode2:=!Mode2
#!s::InputBox, speed, Speed Setting, Enter Speed, , 192, 144, , , , 7, %speed%

#IfWinNotActive ahk_exe WINWORD.EXE
#!x:: 
	enable:=!enable
	if (enable) {
		Tooltip Operating,0,0
		SetTimer, BreakScript, 100
	} else {
		Tooltip
		SetTimer, BreakScript, Off
	}
	return
#If

#If enable
w::
	While GetKeyState("w","p") {
		send w
		DllCall("Sleep", Uint, speed)
		send {WheelUp}
	}
return
a::
	While GetKeyState("a","p") {
		send a
		send {Left}
		sleep 300
	}
return
s::
	While GetKeyState("s","p") {
		send s
		DllCall("Sleep", Uint, speed)
		send {WheelDown}
	}
return
d::
	While GetKeyState("d","p") {
		send d
		send {Right}
		sleep 3001
	}
return
#If


BreakScript:
	Input, out, L1 M, wasd{Left}{Right}{Up}{Down}{Home}{End}{CapsLock}{NumLock}{PrintScreen}{LButton}{RButton}{MButton}{WheelUp}{WheelDown}
	if (out!="" && out!="w" && out!="a" && out!="s" && out!="d") {
		enable:=!enable
		Tooltip
		SetTimer,, Off
	}
return
