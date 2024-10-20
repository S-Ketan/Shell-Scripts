#!/bin/bash
# This program adds a date before the file name of the file passed in the arguement

d=$(date +'%y-%m-%d-')
if [ $# -lt "1" ]; then
        echo "Please enter file name"
        exit 1
fi
for x in "$@" ; do
        y=${d}${x}
         mv "$x" "$y"
done