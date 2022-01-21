#!/bin/bash
# @ZendaiOwl 
# This is my second take on writing my own 'ls' function.
# This script prints the content of the specified directory.
# The 1st given argument is processed as the specified directory to print.
# Some colours below
RD='\033[0;31m'
GR='\033[0;32m'
YW='\033[0;33m'
BL='\033[0;34m'
WT='\033[0;37m'
NC='\033[0;0m'
dir="$1"
# dir="${dir:=$HOME}"
if [[ -e $dir ]] && [[ -d $dir ]]; then
	for files in "$dir"/* "$dir"/.*
	do
	if [[ -d $files ]]; then
		OUT="$YW${files##*/}"
	elif [[ -f $files ]]; then
		OUT="$WT${files##*/}"
	else
		OUT="$RD${files##*/}"
	fi
	printf '%b%s%b\n' "$OUT$NC"
	done | column
else
	if [[ -z $dir ]]; then
		printf '%s\n' "No directory specified."
	else
		printf '%s\n' "$dir: Directory not found."
	fi
fi

