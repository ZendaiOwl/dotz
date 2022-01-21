#!/bin/bash
# @ZendaiOwl 
# This is my second take on writing my own 'ls' function.
# This script prints the content of the specified directory.
# The 1st given argument is processed as the specified directory to print.
# If no directory is given as command args, it prints the $HOME dir for the 
# invoking user. This can be disabled by commenting out the line
# dir="${dir:=$HOME}" below.
dir="$1"
dir="${dir:=$HOME}"
if [[ -d "$dir" ]]; then
	for files in "$dir"/* "$dir"/.*
	do
		printf '%-6s\n' "${files##*/}"
	done | column
else
	printf '%s\n' "$1: Directory not found."
fi

