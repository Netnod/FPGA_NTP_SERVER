#! /bin/bash
set -x
set -e

echo "It was $ARISTA_FDK_DIR"
ARISTA_FDK_DIR=${ARISTA_FDK_DIR:-$(pwd)/../../../arista_fdk-2.0.0beta1}
echo "Building using Arista FDK in $ARISTA_FDK_DIR"

(cd ../../cores && ./download-and-unpack.sh || exit 1)
rm -rf build
git clean -fdxq xilinx_ip

# I can't figure out how to put vhdl files in a library using the
# Arista build system so just edit all the source files for the
# neorv32 core so that they use work/xil_defaultlib instead.
mkdir -p build/neorv32
cp -rf ../../cores/neorv32/rtl build/neorv32
mkdir -p build/processor
cp -rf ../../cores/processor/rtl build/processor
find build/neorv32 build/processor -type f | xargs sed -i 's/neorv32\./work./g'

# Create build info
vivado -nojournal -nolog -notrace -mode batch -source create_buildinfo.tcl

/bin/time nice make ARISTA_FDK_DIR=$ARISTA_FDK_DIR BOARDSTD=lb2 2>&1 | tee log
if ! test -f ntps-4.0.0.x86_64.rpm; then
    echo "Build failed" 1>&2
    exit 1
fi
