#! /bin/bash
set -x
set -e

cd "`dirname \"$0\"`"

(cd ../../Linux_Driver && make clean && make || exit 1)

sudo ./program_fpga.sh "$1"

(cd ../../Linux_Driver && sudo ./setup_dev.sh)
