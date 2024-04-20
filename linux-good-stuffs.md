# GIT in nautilus
Read the install instructions from the README of repo: `https://gitlab.gnome.org/philippun1/turtle`, the flatpak install version didn't work Gnome 46 when I tried. 

# HiDPI-Fixer
Huge time saver app: `https://github.com/alex-spataru/HiDPI-Fixer`

# The Best Emoji Utility - Emote
https://snapcraft.io/emote

After installing this app add this in the startup command: `/snap/bin/emote`

![image](https://user-images.githubusercontent.com/1834890/126483364-a09f5804-2ca7-432a-9650-0d5ba6cff8e0.png)

# The Best Screenshot utility - Flameshot
**Flameshot** : search in software store and should be found easily

![image](https://user-images.githubusercontent.com/1834890/126483438-070ff5c6-b7b3-43f5-bb2e-c6a2347ddd14.png)

# Rounded Window Corners - ALL
https://extensions.gnome.org/extension/5237/rounded-window-corners/

# gTile 
Get it from extensions.

Preset resize 1: `20x20 1:1 10:10`, and in Accelerators section shortcut as `Ctrl+Alt+1`

Preset resize 2: `20x20 11:1 20:10`, and in Accelerators section shortcut as `Ctrl+Alt+2`

Preset resize 3: `20x20 1:10 10:20`, and in Accelerators section shortcut as `Ctrl+Alt+3`

Preset resize 4: `20x20 11:10 20:20`, and in Accelerators section shortcut as `Ctrl+Alt+4`

Preset resize 5: `20x20 1:1 10:10,20x20 11:1 20:10,20x20 1:10 10:20,20x20 11:10 20:20`, and in Accelerators section shortcut as `Ctrl+Alt+q`

Preset resize 6: `20x20 4:1 17:20`, and in Accelerators section shortcut as `Ctrl+Alt+w`

# Brightness controller for Gnome: Display DDC Brightness & Volume [POP-OS]
Follow these instructions: https://github.com/SaGrLand/gnome-shell-display-ddc-brightness-volume/, restart the computer and only then install the extension https://extensions.gnome.org/extension/4712/display-ddc-brightness-volume/ to get it working properly.

# Brightness Controller for openSUSE (Gnome 44+) 
OSS Github link
https://github.com/daitj/gnome-display-brightness-ddcutil

Extension
https://extensions.gnome.org/extension/2645/brightness-control-using-ddcutil/

# Best tip to reduce Gnome 43 window header bar
https://askubuntu.com/questions/1358632/how-to-reduce-the-height-of-headerbar-titlebar-of-gtk3-apps-using-csd

# Start to Desktop, instead of Gnome overview
https://extensions.gnome.org/extension/4099/no-overview/

# Avoid "Window Ready" but get them front.
https://extensions.gnome.org/extension/2182/noannoyance/

# The Best MacOS theme for linux - WhiteSur-Gtk-Theme
https://github.com/vinceliuice/WhiteSur-gtk-theme

# Tob Bar Transparent Adjustable (Gnome 45)
`https://extensions.gnome.org/extension/3960/transparent-top-bar-adjustable-transparency/`

# Top-bar Semi-transparent (Gnome 44)
1. Install the extension: https://github.com/esorio/transparent-topbar
2. Go to : `/home/pavan/.local/share/gnome-shell/extensions/TransparentTopbar@enrico.sorio.net` open `stylesheet.css` file
3. Update code as shown below:
```
.panel-transparency {
    background-color: rgba(0, 0, 0, 0.35);
    box-shadow: none;
    border: none;
}
```

# Color-picker extension
https://extensions.gnome.org/extension/3396/color-picker/

# GIT extension of Nautilus
`sudo dnf install rabbitvcs-nautilus` or `sudo apt install rabbitvcs-nautilus`

Copy edited icons from this repo folder `rabbitvcs-icons` to `/usr/share/icons/hicolor/scalable/emblems`

# The Best Clipboard Manager for linux - CopyQ
https://github.com/hluk/CopyQ

# The Best Email Clinet for linux - MailSpring
mailspring - free, open source and super good looking! https://github.com/Foundry376/Mailspring however this should also be available in Software Store.

Though mailSpring adds itself in the startup, but just in-case if it missed: `mailspring --background %U`

![image](https://user-images.githubusercontent.com/1834890/128613148-ea3110a2-02c2-4fdc-a498-27a1822faefe.png)

# The Best linux Top-bar utility to bottom - JustPerfection
https://gitlab.gnome.org/jrahmatzadeh/just-perfection

# The GOOD video player so far.
Its VLC only


# The Best X11 key mapping software - AutoKey
**Install** AutoKey software, make sure linux is on **X11 mode**, Arrange scripts as shown in the screenshot

Add following code for each key navigation

``keyboard.send_key("<down>",1)``

``keyboard.send_key("<up>",1)``

``keyboard.send_key("<left>",1)``

``keyboard.send_key("<right>",1)``

``keyboard.send_key("<home>")``

``keyboard.send_key("<end>")``

``window.resize_move(window.get_active_title(),650,-55,3300,3160, False)`` (set shortcut key accordinly CTRL + ALT + W)

![image](https://user-images.githubusercontent.com/1834890/126483901-216eed3d-7d9f-40d3-94f2-56d2ffdfcc59.png)

- From scripts folder on this repo copy files from `/scripts/autohotkey-linux/scripts-folder` to `/home/<user>/.config/autokey/data`
- For OpenSUSE perform pip installation https://github.com/autokey/autokey/wiki/Installing#pip-installation (need to install python-devlopment)
- Also expected to run this command `xhost +`
- On Fedora use this command `sudo dnf install autokey-gtk.noarch autokey-common.noarch`


# The Best RDP Client - FreeRDP
**FreeRDP is the best RDP client tool on Linux to connect windows servers install it as show below**
``sudo apt install freerdp2-x11``
**or**
Get deb files from here: https://ci.freerdp.com/job/freerdp-nightly-binaries/architecture=amd64,distribution=hirsute,label=pkg-deb/

Usage: https://github.com/FreeRDP/FreeRDP/wiki/CommandLineInterface

``xfreerdp /u:username /p:password /v:<server_ip>:<port> /w:1366 /h:740 +clipboard /gdi:sw``

or

`#!/bin/bash`

`xfreerdp /u:username /p:password /v:<server_ip>:<port> /w:2560 /h:1440 +clipboard /gdi:sw /scale:180 /scale-desktop:200`


# The Best Virtual Machine Software - KVM-QEMU
**KVM - QEMU**

Run below command to install all required tools and utils for QEMU and UI Manager

`sudo apt install qemu qemu-kvm bridge-utils virt-manager libvirt-daemon-system libvirt-clients`

Open `/etc/libvirt/qemu.conf` and uncomment / change below lines from -> to

`#user = "root"` ==> `user = "root"`

`#group = "root"` ==> `group = "root"`

AND on Fedora (or if virt-manager is asking for auth everytime) run this command `sudo usermod -a -G libvirt $USER`

**_restart computer_**

To check status of qemu after restart

`sudo systemctl status libvirtd`

### How to fully remove QEMU 

`sudo apt-get purge --auto-remove qemu-kvm`

### Share clipboard with linux guest

`sudo apt install spice-vdagent`

### cockpit to manage VMs (THE BEST)
https://dausruddin.com/how-to-enable-clipboard-and-folder-sharing-in-qemu-kvm-on-windows-guest/

The file sharing has file transfer limits the fix is here: https://www.thewindowsclub.com/file-size-exceeds-limit-allowed-cannot-saved

## If the network fail to work
https://blog.programster.org/kvm-missing-default-network


## Run .sh file when double clicked
In dconfg-editor go to: ``org ➤ gnome ➤ nautilus ➤ preferences``
Click on executable-text-activation and from drop down menu select:

``launch``: to launch scripts as programs.
OR
``ask``: to ask what to do via a dialog

# Setting up tomcat9 with tomcat9-admin
https://github.com/RevatureGentry/DemoPipelineExample


# Super good stuff: Restore GRUB when Windows installation removes it!
https://askubuntu.com/questions/83771/recovering-grub-after-installing-windows-7

# How to set your custom font in GNOME
Run the following in terminal

`gsettings set org.gnome.desktop.interface font-name 'Inter Medium, 11'`

# Switching apps with ALT + TAB is tricky in gnome, make it like Windows
Use dconf-editor UI and change all 4 paths as shown below. Running these command won't work (phew..linux!)

```
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"
```

# Show apps in ALT+TAB from current workspace only
```
gsettings set org.gnome.shell.window-switcher current-workspace-only true
gsettings set org.gnome.shell.app-switcher current-workspace-only true
```

# Disable Gnome Animations
`gsettings set org.gnome.desktop.interface enable-animations false`

# Fix time zone problem when dual boot Windows
`timedatectl set-local-rtc 1`

# X11 Mouse Setting
`$ xinput`
It will list all the availalbe inputs iwth id numbers for me, it was "Logitech Wireless Mouse                 	id=11"

`xinput --list-props "Logitech Wireless Mouse"`
This lists all variables for mouse where acceleration speed is: **libinput Accel Speed (301):	-0.400000**

`xinput --set-prop 11 301 -0.59800` to set the mosue speed with precision!

# Run .sh file on system boot
Write shell script and make sure the 
- first line is always `#!/bin/sh` 
- make the file as executable
- place the file in the following path: `/etc/init.d/`


# Set NEMO as your default file manager
https://sourcedigit.com/13826-set-nemo-default-file-manager-ubuntu/

Set tilix as default terminal `gsettings set org.cinnamon.desktop.default-applications.terminal exec tilix`


Restore gnome-terminal as default terminal `gsettings set org.gnome.desktop.default-applications.terminal exec tilix`

# Configure GNOME advanced properties
https://extensions.gnome.org/extension/4254/shell-configurator/

# Fedora : Fastest mirror for dnf
open `/etc/dnf/dnf.conf` and add

`fastestmirror=True`

`max_parallel_downloads=10`

# Default X-Terminal Setting
sudo update-alternatives --config x-terminal-emulator

# Some more inspirations
https://github.com/bearlike/my-popos-setup

# Best Extensions
Appindicator - https://extensions.gnome.org/extension/615/appindicator-support/
