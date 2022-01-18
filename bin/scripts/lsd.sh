#!/bin/bash
# My own version of "ls", listing the current working directory's contents.
# @ZendaiOwl
white="$(tput setaf 15)"
direc="$(tput setaf 117)"
fil="$(tput setaf 48)"
red="$(tput setaf 196)"
reset="$(tput sgr0)"
for d in ./*
do 
	if [ -f "$d" ]; then
	printf '%s\n' "$fil${d##./}$reset"
	elif [ -d "$d" ]; then
	printf '%s\n' "$direc${d##./}$reset"
	else
	printf '%s\n' "$red${d##./}$reset"
	fi
done | column -txc 12

exit
