#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# @ZendaiOwl 
# This is my second take on writing my own 'ls' function.
# This script prints the content of the specified directory, not current.
# The 1st given argument is processed as the specified directory to print.
# This script also prints .files.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Color Name	Foreground Color Code
# Black			30						
# Red			31						
# Green			32						
# Yellow		33						
# Blue			34
# Magenta		35
# Cyan			36
# White			37
# Default		39
# Reset			0
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Colour 		Background Color Code
# Black			40
# Red			41
# Green			42
# Yellow		43
# Blue			44
# Magenta		45
# Cyan			46
# White			47
# Default		48
# Reset			0
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
RD='\033[0;31m'
GR='\033[0;32m'
YW='\033[0;33m'
BL='\033[0;34m'
WT='\033[0;39m'
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

