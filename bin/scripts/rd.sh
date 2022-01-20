#!/bin/bash
# This is a function to use $(<) for reading files to STDOUT
FILE=$1
printf '%s\n' "$(<$FILE)"
exit
