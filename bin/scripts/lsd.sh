#!/bin/bash
# My own first version of "ls", 
# listing the current working directory's contents.
# Green are files, Blue are directories and Red is all other.
# @ZendaiOwl
# 
# Color Name	Foreground Color Code	Background Color Code
# Black			30						40
# Red			31						41
# Green			32						42
# Yellow		33						43
# Blue			34						44
# Magenta		35						45
# Cyan			36						46
# White			37						47
# Default		39						49
# Reset			0						0
RD='\033[0;31m'
GR='\033[0;32m'
BL='\033[0;34m'
NC='\033[0;0m'
for d in ./*
do 
	if [ -f "$d" ]; then
		OUT="$GR${d##./}$NC"
	elif [ -d "$d" ]; then
		OUT="$BL${d##./}$NC"
	else
		OUT="$RD${d##./}$NC"
	fi
# printf "%b$OUT%b\n"
printf '%b%s%b\n' "$OUT"
done | column

exit
