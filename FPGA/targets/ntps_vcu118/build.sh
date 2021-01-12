#! /bin/bash
cd "`dirname \"$0\"`"

(
cd ../../cores
./download-and-unpack.sh
)

make


