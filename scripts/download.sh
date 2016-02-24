#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

file=$1
url=$2

if [ -f $file ]; then
    echo "Not downloading $file." > /dev/null
else
    echo "Downloading $file."
    curl --silent "$url" > $file || echo Failed to download $file
fi

