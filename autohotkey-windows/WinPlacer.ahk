PlaceWindow(XP, WP, HT) {
	;Get current Window
	WinGetActiveTitle, WinTitle
	WinGetPos, X, Y, WinWidth, WinHeight, %WinTitle%
	
	;Get Taskbar height
	WinGetPos,,, tbW, tbH, ahk_class Shell_TrayWnd
	
	;Calculate new position and size
	XNew := (A_ScreenWidth * XP / 100)
	WNew := (A_ScreenWidth * WP / 100)
	HNew := (A_ScreenHeight - tbH)/HT
	
	;MsgBox, %XNew% - %WNew%
	WinRestore, %WinTitle%
	WinMove, %WinTitle%,, %XNew%, 0, %WNew%, %HNew%
}


^!w::
	PlaceWindow(18,65,1)
return
