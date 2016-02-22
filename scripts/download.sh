#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

file=$1
url=$2

if [ -f $file ]; then
    echo "File $file exists."
else
    echo "File $file does not exist."
    curl --silent $url > $file
fi

