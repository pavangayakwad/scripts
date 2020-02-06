#-name :  keep adding or conditions with required file extension
#out.txt :  file that contains the result
#The dot After the find command is the path, (dot) is for current folder and for other folders, you can mention path
#	ex: find /home -type f \( -name "*.deb" \) > debout.txt

#searches in current folder/subfolder where this script is located.
find . -type f \( -name "*.flv" -or -name "*.fla" -or -name "*.swf" -or -name "*.FLV" -or -name "*.FLA" -or -name "*.SWF" \) > fileslist_$(date +%Y-%b-%d_%H:%M:%S).txt

#Different  path  instead of dot, searches folder/subfolder
#find /home -type f \( -name "*.deb" \) > fileslist_$(date +%Y-%b-%d_%H:%M:%S).txt
