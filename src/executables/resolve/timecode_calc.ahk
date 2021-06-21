; Simple Timecode calculator by PanicInTheKernel
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui, Color, 000000, c000000
Gui, Font, cFFFFFF
Gui, Font, s15, Verdana
Gui Add, Text, x10 y0 w120 h30 +0x200, Timecode 1:
Gui Add, Edit, x10 y30 w40 h30 vMin1 gUpdateUI, 0
Gui Add, Edit, x50 y30 w40 h30 vSec1 gUpdateUI, 0
Gui Add, Edit, x90 y30 w40 h30 vFrm1 gUpdateUI, 0
Gui Add, Text, x10 y60 w120 h30 +0x200, Timecode 2:
Gui Add, Edit, x10 y90 w40 h30 vMin2 gUpdateUI, 0
Gui Add, Edit, x50 y90 w40 h30 vSec2 gUpdateUI, 0
Gui Add, Edit, x90 y90 w40 h30 vFrm2 gUpdateUI, 0
Gui Add, Text, x10 y130 w120 h5 +0x10
Gui Add, Text, x10 y135 w120 h30 +0x200 vOut cRed, 0
Gui, -SysMenu
Gui, -Caption
;Gui, Color, 000000
Gui Show, w140 h170, Window
Winset, Alwaysontop, , A
Return


GuiEscape:
GuiClose:
    ExitApp

UpdateUI:
    Gui, Submit, NoHide
    dif:=abs((Min1*60*24 + Sec1*24 + Frm1) - (Min2*60*24 + Sec2*24 + Frm2))
    GuiControl,,Out, %dif%
return