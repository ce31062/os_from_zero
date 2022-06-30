#Since / dev / sdf1 is a unique environment, 
#it is necessary to check and set the path to the boot target device 
#when using it in other environments.  
sudo umount /dev/sdf1
sudo mkfs.fat /dev/sdf1
sudo mkdir -p /mnt/usbmem
sudo mount /dev/sdf1 /mnt/usbmem
sudo mkdir -p /mnt/usbmem/EFI/BOOT
sudo cp /home/ubuntu/workspace/mikanos/kernel/kernel.elf /mnt/usbmem
sudo cp $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi /mnt/usbmem/EFI/BOOT
sudo mv /mnt/usbmem/EFI/BOOT/Loader.efi /mnt/usbmem/EFI/BOOT/BOOTX64.EFI

sudo cp $HOME/workspace/mikanos/apps/ /mnt/usbmem

sudo umount /mnt/usbmem 