#!/bin/bash
if [ $# -lt 1 ]; then
        echo "Please enter atleast 1 arguement"
        exit 1
fi
for x in "$@" ; do

        if [ -f "$x" ] ; then
                echo "$x is a normal file"
        elif [ -d "$x" ] ; then
                echo "$x is a directory"
        else
                echo "File does not exist"
        fi
done