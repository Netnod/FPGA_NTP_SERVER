#! /bin/bash
set -x
set -e

cd "`dirname \"$0\"`"

(cd ../../../Linux_Driver && make clean && make || exit 1)
(cd ../../../Linux_Driver && sudo rmmod xi2c xpcie || true)

sudo ./program_fpga.sh "$@"

(cd ../../../Linux_Driver && sudo insmod xi2c.ko)
