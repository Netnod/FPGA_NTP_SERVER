#! /bin/bash
cd "`dirname \"$0\"`"

(
cd ../../cores
./download-and-unpack.sh
)

/bin/time make 2>&1 | tee log
