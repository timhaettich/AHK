﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;If Save As Dialog opens, add the current timestamp to it
Loop{
	WinWait, Save As
	FormatTime, CurrentDateTime,, yyMMddhhmm
	ControlGetText, savedir, Edit1
	ControlSetText, Edit1, %CurrentDateTime%_%savedir%
	while WinExist("Save As") {
		Sleep, 5000
	}
}
return