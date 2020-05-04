sync #this will ensure all pending writes to disk are completed.
umount /media/pavan/dreams
if [ $? -eq 0 ]; then
	sure=$(zenity --entry --text "sure? press y to continue")
	if [ $sure = y ]; then 
		poweroff
	else 
		echo "ok"
	fi
else
	zenity --error --text="drive is busy!"
fi

