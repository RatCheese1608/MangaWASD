;OPTIMIZATIONS START
;#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
;OPTIMIZATIONS END

#UseHook

SPEED:=52					;The default delay time
boolL:=True

f1:: Reload

#!l:: boolL:=!boolL
#!s::InputBox, SPEED, Speed Setting, Enter Speed, , 192, 144, , , , 10, %SPEED%

#+s:: send #+s

#Space::
;msgbox, , Start, Start, 0.3
T:=!T
Tooltip Operating,10,10
sleep 100
Loop {
	while GetKeyState("w") {
		send {WheelUp}
		sleep SPEED
	}
	while GetKeyState("a") {
		if boolL {
			send {Left}
			sleep 300
		} else {
			send {WheelUp 5}
			sleep 90
		}
	}
	while GetKeyState("s") {
		send {WheelDown}
		sleep SPEED
	}
	while GetKeyState("d") {
		if boolL {
			send {Right}
			sleep 300
		} else {
			send {WheelDown 5}
			sleep 90
		}
	}
	Input, out, L1 T0.01 M I C B V E,wasd{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Pause}
	
	while GetKeyState("w") {
		send {WheelUp}
		sleep SPEED
	}
	while GetKeyState("a") {
		if boolL {
			send {Left}
			sleep 300
		} else {
			send {WheelUp 5}
			sleep 90
		}
	}
	while GetKeyState("s") {
		send {WheelDown}
		sleep SPEED
	}
	while GetKeyState("d") {
		if boolL {
			send {Right}
			sleep 300
		} else {
			send {WheelDown 5}
			sleep 90
		}
	}
	if (out!="") {
		Tooltip
		break
	}
	sleep 1
} return
