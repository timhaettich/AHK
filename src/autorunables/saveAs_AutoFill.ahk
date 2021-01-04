#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#If Save As Dialog opens, add the current timestamp to it
WinWait, Save As
FormatTime, CurrentDateTime,, yyMMdd
ControlGetText, savedir, Edit1
ControlSetText, Edit1, %CurrentDateTime%_%savedir%
return