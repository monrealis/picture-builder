#!/bin/bash

cat german-words.txt | grep . | sed 's/ -.*//g' | sort | uniq -c | gawk '$1!=1'
