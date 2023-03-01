#! /bin/bash
cd "`dirname \"$0\"`"

(
cd ../../cores
./download-and-unpack.sh
)

if [ -d /opt/riscv32 ]; then 
    PATH=/opt/riscv32/bin:$PATH make -C ../../cores/neorv32/sw/bootloader USER_FLAGS="-DUART_BAUD=115200" clean_all bootloader
fi

/bin/time make 2>&1 | tee log
