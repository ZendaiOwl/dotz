#!/usr/bin/env bash
set -euo pipefail
DIR=$1
FILE=output.txt
if [ -n "$FILE" ] ; then
:>$FILE
fi
ls -lha $DIR/* | tee -a $FILE

exit
