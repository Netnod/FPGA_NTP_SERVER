#! /bin/bash
PATH=/opt/riscv32/bin:$PATH
make -C ../../cores/neorv32/sw/bootloader USER_FLAGS="-DUART_BAUD=115200" clean_all bootloader
cp -f ../../cores/neorv32/sw/bootloader/neorv32_bootloader_image.vhd rtl
