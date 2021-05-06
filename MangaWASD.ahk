#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SPEED:=49				  ;delay in milliseconds

#!m::Suspend, Toggle

+d::Send, {Right}

+a::Send, {Left}

+w::
While GetKeyState("w") && GetKeyState("Shift")
{
Send {Wheelup}
Sleep SPEED
}
return

+s::
While GetKeyState("s") && GetKeyState("Shift")
{
Send {Wheeldown}
Sleep SPEED
}
return
