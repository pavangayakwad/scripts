#!/bin/bash
bg=$(zenity --entry --text "enter brightness number 0.1 to 0.99. 1 for 100% brightness")
xrandr --output HDMI-0 --brightness $bg
#xrandr --output DP-1 --brightness $bg
