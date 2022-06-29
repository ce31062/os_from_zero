#$HOME/osbook/devenv/run_qemu.sh /home/ubuntu/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi /home/ubuntu/workspace/mikanos/kernel/kernel.elf 
cd $HOME/workspace/mikanos
source ~/osbook/devenv/buildenv.sh
APPS_DIR=apps RESOURCE_DIR=resource ./build.sh run