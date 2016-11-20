#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo download-all.sh: illegal number of parameters: $#
    exit 1
fi

file=$1
mkdir -p gallery
awk -F\; 'NF==3' $file  | awk -F\; '{print "gallery/" $1,$3}' | xargs -n2 ./download.sh

