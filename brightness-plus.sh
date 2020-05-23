bg=`xrandr --verbose | grep -m 2 -i brightness | tail -n1 | cut -f2 -d ' '`
#bg=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
tune=`echo "scale=2; $bg + 0.02" | tr , . | bc`
echo $tune
xrandr --output HDMI-1 --brightness $tune
xrandr --output DP-1 --brightness $tune

