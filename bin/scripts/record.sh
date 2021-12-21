#!/bin/bash
# @ZendaiOwl
# This script records the output of a command to a text file
log_file="script_output.txt"
touch ./$log_file
$1 | tee -a "$log_file"
exit
