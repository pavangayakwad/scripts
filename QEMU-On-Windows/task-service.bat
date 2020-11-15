rem use cdrom config during install
rem qemu-system-x86_64 -hda hdd.qcow2 -cdrom ubuntu-20.10-live-server-amd64.iso -vga std -m 1G -accel whpx -smp cpus=1,cores=1


rem use below command to run the installed OS
rem qemu-system-x86_64 -hda hdd.qcow2 -vga std -m 1G -accel whpx -smp cpus=1,cores=1 -net nic,model=virtio -net user
rem qemu-system-x86_64 -hda hdd.qcow2 -m 4G -accel whpx -smp cores=4 -vga virtio -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::5555-:22,hostfwd=tcp::8080-:8080,hostfwd=tcp::3333-:3306
rem qemu-system-x86_64 -hda hdd.qcow2 -m 4G -accel whpx -smp cores=4 -vga virtio -nic user,hostfwd=tcp::5555-:22,hostfwd=tcp::8080-:8080,hostfwd=tcp::3333-:3306,hostfwd=tcp::4444-:1431

rem qemu-system-x86_64 -hda hdd.qcow2 -m 2G -cpu max -smp cores=2 -vnc localhost:0 -nic user,hostfwd=tcp::5555-:22,hostfwd=tcp::8080-:8080,hostfwd=tcp::3333-:3306,hostfwd=tcp::4444-:1431

qemu-system-x86_64 -hda hdd.qcow2 -m 4G -accel whpx -smp cores=4 -vga std -netdev tap,id=mynettap,ifname=win-tap,script=no,downscript=no -device e1000,netdev=mynettap,mac=52:55:00:d1:55:02

