umount /media/pavan/dreams3
if [ $? -eq 0 ]; then
	poweroff
else
	zenity --error --text="drive is busy!"
fi

