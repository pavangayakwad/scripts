; Global variable to track current quadrant for cycling
CurrentQuadrant := 1

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

PlaceWindowQuadrant(Quadrant) {
	;Get current Window
	WinGetActiveTitle, WinTitle
	
	;Get Taskbar height
	WinGetPos,,, tbW, tbH, ahk_class Shell_TrayWnd
	
	;Calculate available screen dimensions
	AvailableHeight := A_ScreenHeight - tbH
	QuadrantWidth := A_ScreenWidth / 2
	QuadrantHeight := AvailableHeight / 2
	
	;Calculate position based on quadrant
	if (Quadrant = 1) {
		; Top-left quadrant
		XNew := 0
		YNew := 0
	}
	else if (Quadrant = 2) {
		; Top-right quadrant
		XNew := QuadrantWidth
		YNew := 0
	}
	else if (Quadrant = 3) {
		; Bottom-left quadrant
		XNew := 0
		YNew := QuadrantHeight
	}
	else if (Quadrant = 4) {
		; Bottom-right quadrant
		XNew := QuadrantWidth
		YNew := QuadrantHeight
	}
	
	;Move and resize window
	WinRestore, %WinTitle%
	WinMove, %WinTitle%,, %XNew%, %YNew%, %QuadrantWidth%, %QuadrantHeight%
}


^!w::
	PlaceWindow(18,65,1)
return

; Quadrant hotkeys - divide screen into 4 equal parts
^!1::
	PlaceWindowQuadrant(1)  ; Top-left quadrant
return

^!2::
	PlaceWindowQuadrant(2)  ; Top-right quadrant
return

^!3::
	PlaceWindowQuadrant(3)  ; Bottom-left quadrant
return

^!4::
	PlaceWindowQuadrant(4)  ; Bottom-right quadrant
return

; Cycle through quadrants sequentially
^!q::
	PlaceWindowQuadrant(CurrentQuadrant)
	CurrentQuadrant := CurrentQuadrant + 1
	if (CurrentQuadrant > 4) {
		CurrentQuadrant := 1  ; Reset to first quadrant after 4th
	}
return
