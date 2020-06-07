# Linux Good Utils & My useful Notes
----------------------------------------------------------------------
**FreeRDP is the best RDP client tool on Linux to connect windows servers install it as show below**

_sudo apt install xfreerdp-x11 -y

_xfreerdp /u:username /v:<server_ip>:<port> /w:1366 /h:740 +clipboard /gdi:sw

**rdesktop** also another best alternarive but it doens't have advanced encryption logics (deprecated)


**KVM - QEMU**
------------------------------------------------
Run below command to install all required tools and utils for QEMU and UI Manager

_sudo apt install qemu qemu-kvm bridge-utils  virt-manager libvirt-daemon-system libvirt-clients_

