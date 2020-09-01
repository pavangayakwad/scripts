#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
!i::
send, {Up down}
return

!k::
send, {Down down}
return

!l::
send, {Right down}
return

!j::
send, {Left down}
return

+!i::
send, {PgUp down}
return

+!k::
send, {PgDn down}
return

+!l:: 
send, {End down}
return

+!j::
send, {Home down}
return

!z::
  CoordMode, Mouse, Screen ; mouse coordinates relative to the screen
  MouseGetPos, MouseX, MouseY
  if (MouseX > A_ScreenWidth) {
    MouseMove, -A_ScreenWidth, 0, 0, R
  } else {
    MouseMove, A_ScreenWidth, 0, 0, R
  }
return

!c::
	PostMessage, 0x112, 0xF060,,, A     ; ...so close window        
    Return

;$Escape::                                               ; Long press (> 0.5 sec) on Esc closes window - but if you change your mind you can keep it pressed for 3 more seconds
;    KeyWait, Escape, T0.5                               ; Wait no more than 0.5 sec for key release (also suppress auto-repeat)
;    If ErrorLevel                                       ; timeout, so key is still down...
;        {
;            KeyWait, Escape, T3                         ; Wait no more than 3 more sec for key to be released
;            If !ErrorLevel                              ; No timeout, so key was released
;                {
;                    PostMessage, 0x112, 0xF060,,, A     ; ...so close window        
;                    Return
;                }
;                                                        ; Otherwise,
;            KeyWait, Escape                             ; Wait for button to be released
;                                                        ; Then do nothing...
;            Return
;        }
;        
;    Send {Esc}
;Return