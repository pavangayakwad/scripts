; This script runs Explorer++ on Win+E.
; The Explorer++ executable must be in the same directory as this script file.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; Only one copy of this script should run at a time.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir D:\Dropbox\Home  ; Ensures a consistent starting directory.

#e::
try {
	Run explorer .
} catch e {
    MsgBox Couldn't run Explorer++.`nPlease make sure it's in the same directory as this script (%A_ScriptDir%).
}
return