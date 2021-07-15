# scripts
xrdp-installer-1.1.sh 
----------------------------
The script is borrowed from http://www.c-nergy.be - http://www.c-nergy.be/blog and his comments are retained as is in the script. It is tuned to work well with Peppermint OS 10. 

docker
-----------------------------
Tried to have linux container helps to run VS code and eclipse on GDI+ becuase Windows fails badly at rending fonts in these IDEs.

code1401.deb	- should be replaced with proper deb file of VS code installer
eclipse19-09R_x64.tar.gz - should be replaced with proper eclipse tar ball downloaded from eclipse site. 

brightness-plus.sh AND brightness-minus.sh
-------------------------------------------
These scripts help you to control brightenss of your external monitors. 
- Copy them to a folder
- make them executable "chmod +x brightness-{plus/minus}"
- Assign shortcut keys to these scripts from Gnome keyboard shortcut key setting.

shutdown.sh
-------------------------------------------
Make sure any mounted drive is unmounted properly and then shutdown the computer. The script re-confirms shutdown just to avoid any surprise let downs.

MyArrows.ahk
-------------------------------------------
https://www.autohotkey.com/ is THE BEST software to automate most of the keybaord and mouse activities on Windows. This script has all my favorite hot keys for windows that I use daily. 

Linux Keymapping
-------------------------
Install **AutoKey** software, make sure linux is on **X11** mode, Arrange scripts as shown in the screenshot

![image](https://user-images.githubusercontent.com/1834890/125837258-0ce5e44f-5b90-448e-9bbb-2f5f3d4cf68f.png)

Add following code for each key navigation

`keyboard.send_key("<down>",1)`
  
`keyboard.send_key("<up>",1)`
  
`keyboard.send_key("<left>",1)`
  
`keyboard.send_key("<right>",1)`
  
`keyboard.send_key("<home>")`
  
`keyboard.send_key("<end>")`

  
  
-------------------------------------
For any assitance tweet me @PavanGayakwad
