#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# My own first version of "ls" listing the current directory's contents.
# This script does not show .files, lsda.sh does.
# It is possible to supply a path to show the contents of as the $1 args.
# Directories 		: Yellow/Orange
# Files 		: White
# Others 		: Red
# @ZendaiOwl
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Color Name 		Foreground Color Code
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
MG='\033[0;35m'
WT='\033[0;39m'
NC='\033[0;0m'
dir=$1
if [[ -z $1 ]]; then
	for d in ./*
	do 
		if [[ -d $d ]]; then
			OUT="$YW${d##*/}$NC"
		elif [[ -f $d ]]; then
			OUT="$WT${d##*/}$NC"
		else
			OUT="$RD${d##*/}$NC"
		fi
	# printf "%b$OUT%b\n"
	printf '%b%s%b\n' "$OUT"
	done | column
else
	if [[ -e $1 ]]; then
		for d in "$1"/*
		do
			if [[ -d $d ]]; then
				OUT="$YW${d##*/}$NC"
			elif [[ -f $d ]]; then
				OUT="$WT${d##*/}$NC"
			else
				OUT="$RD${d##*/}$NC"
			fi
		printf '%b%s%b\n' "$OUT"
		done | column
	else
		printf '%s\n' "$1: Directory not found."
	fi
fi

exit
