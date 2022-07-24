#!/bin/sh -eu

make ${MAKE_OPTS:-} -C kernel kernel.elf

for MK in $(ls apps/*/Makefile)
do
  APP_DIR=$(dirname $MK)
  APP=$(basename $APP_DIR)
  make ${MAKE_OPTS:-} -C $APP_DIR $APP
done

if [ "${1:-}" = "run" ]
then
  MIKANOS_DIR=$PWD $HOME/osbook/devenv/run_mikanos.sh
fi
if [ "${1:-}" = "usb" ]
then
  chmod +x usbwrite_with_apps.sh
  $HOME/workspace/mikanos/usbwrite_with_apps.sh
fi
