#This script is executed when volume strage like as usb memory.
#Change the boot storage path according to the environment.

cd $HOME/workspace/mikanos
source ~/osbook/devenv/buildenv.sh
source build.sh
sudo mount -o loop disk.img mnt

sudo umount /dev/sdf1
sudo mkfs.fat /dev/sdf1
sudo mkdir -p /mnt/usbmem
sudo mount /dev/sdf1 /mnt/usbmem
sudo mkdir -p /mnt/usbmem/EFI/BOOT
sudo cp $HOME/workspace/mikanos/mnt/kernel.elf /mnt/usbmem
sudo cp /home/ubuntu/workspace/mikanos/mnt/EFI/BOOT/BOOTX64.EFI /mnt/usbmem/EFI/BOOT
sudo cp /home/ubuntu/workspace/mikanos/mnt/onlyhlt /mnt/usbmem
sudo umount /mnt/usbmem


