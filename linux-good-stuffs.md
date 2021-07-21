# The Best Emoji Utility - Emote
https://snapcraft.io/install/emote/mint

![image](https://user-images.githubusercontent.com/1834890/126483364-a09f5804-2ca7-432a-9650-0d5ba6cff8e0.png)

# The Best Screenshot utility - Flameshot
**Flameshot** : search in software store and should be found easily

![image](https://user-images.githubusercontent.com/1834890/126483438-070ff5c6-b7b3-43f5-bb2e-c6a2347ddd14.png)

# The Best MacOS theme for linux - WhiteSur-Gtk-Theme
https://github.com/vinceliuice/WhiteSur-gtk-theme

# The Bring linux Top-bar to bottom - JustPerfection
https://gitlab.gnome.org/jrahmatzadeh/just-perfection

# The Best Clipboard Manager for linux - CopyQ
https://github.com/hluk/CopyQ

# The Best Email Clinet for linux - MailSpring
mailspring - free, open source and super good looking! https://github.com/Foundry376/Mailspring however this should also be available in Software Store.

# The GOOD video player so far.
![image](https://user-images.githubusercontent.com/1834890/126486019-d7fbcd86-7393-4cf1-8f87-43c5e20e8940.png)


# The Best X11 key mapping software - AutoKey
**Install** AutoKey software, make sure linux is on **X11 mode**, Arrange scripts as shown in the screenshot

Add following code for each key navigation

``keyboard.send_key("<down>",1)``

``keyboard.send_key("<up>",1)``

``keyboard.send_key("<left>",1)``

``keyboard.send_key("<right>",1)``

``keyboard.send_key("<home>")``

``keyboard.send_key("<end>")``

![image](https://user-images.githubusercontent.com/1834890/126483901-216eed3d-7d9f-40d3-94f2-56d2ffdfcc59.png)


# The Best RDP Client - FreeRDP
**FreeRDP is the best RDP client tool on Linux to connect windows servers install it as show below**
Get deb files from here: https://ci.freerdp.com/job/freerdp-nightly-binaries/architecture=amd64,distribution=hirsute,label=pkg-deb/

Usage
``xfreerdp /u:username /v:<server_ip>:<port> /w:1366 /h:740 +clipboard /gdi:sw``

# The Best Virtual Machine Software - KVM-QEMU
**KVM - QEMU**

Run below command to install all required tools and utils for QEMU and UI Manager

`sudo apt install qemu qemu-kvm bridge-utils virt-manager libvirt-daemon-system libvirt-clients`

Open `/etc/libvirt/qemu.conf` and uncomment / change below lines from -> to

`#user = "root"` ==> `user = "root"`

`#group = "root"` ==> `group = "root"`

**_restart computer_**

To check status of qemu after restart

`sudo systemctl status libvirtd`

### How to fully remove QEMU 

`sudo apt-get purge --auto-remove qemu-kvm`


## If the network fail to work
https://blog.programster.org/kvm-missing-default-network


# Setting up tomcat9 with tomcat9-admin
https://github.com/RevatureGentry/DemoPipelineExample


# Super good stuff: Restore GRUB when Windows installation removes it!
https://askubuntu.com/questions/83771/recovering-grub-after-installing-windows-7

