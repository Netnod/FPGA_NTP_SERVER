#! /bin/bash
set -e
DOWNLOADS=../../downloads
if [ ! -d v7_xt_conn_trd ]; then
    mkdir -p $DOWNLOADS
    wget -nc -P $DOWNLOADS https://www.xilinx.com/support/documentation/boards_and_kits/vc709/2014_3/rdf0285-vc709-connectivity-trd-2014-3.zip
    rm -rf v7_xt_conn_trd
    unzip $DOWNLOADS/rdf0285-vc709-connectivity-trd-2014-3.zip
fi
