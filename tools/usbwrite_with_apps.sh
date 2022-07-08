#This script is executed when volume strage like as usb memory.
#Change the boot storage path according to the environment.
BOOT_STRAGE="/dev/sdf1"

cd $HOME/workspace/mikanos

sudo mount -o loop disk.img mnt

sudo umount $BOOT_STRAGE
sudo mkfs.fat $BOOT_STRAGE
sudo mkdir -p /mnt/usbmem
sudo mount $BOOT_STRAGE /mnt/usbmem
sudo mkdir -p /mnt/usbmem/EFI/BOOT
sudo cp -r $HOME/workspace/mikanos/mnt/* /mnt/usbmem

#sudo cp $HOME/workspace/mikanos/mnt/kernel.elf /mnt/usbmem
#sudo cp $HOME/workspace/mikanos/mnt/EFI/BOOT/BOOTX64.EFI /mnt/usbmem/EFI/BOOT
#sudo cp $HOME/workspace/mikanos/mnt/onlyhlt /mnt/usbmem
#sudo cp $HOME/workspace/mikanos/mnt/rpn /mnt/usbmem

sudo umount /mnt/usbmem


