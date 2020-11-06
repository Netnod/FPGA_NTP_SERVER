#! /bin/bash
set -e
set -x
DOWNLOADS=../../../downloads
if [ ! -f v7_xt_conn_trd/readme.txt ]; then
    mkdir -p $DOWNLOADS
    wget -nc -P $DOWNLOADS https://www.xilinx.com/support/documentation/boards_and_kits/vc709/2014_3/rdf0285-vc709-connectivity-trd-2014-3.zip
    rm -rf v7_xt_conn_trd
    unzip -q $DOWNLOADS/rdf0285-vc709-connectivity-trd-2014-3.zip
fi
