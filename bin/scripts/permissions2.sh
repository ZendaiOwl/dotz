#!/usr/bin/env bash
DIR=$1
FILE=output.txt
if [ -n "$FILE" ] ; then
:>$FILE
fi
ls -lha $DIR/* | tee -a $FILE

exit
