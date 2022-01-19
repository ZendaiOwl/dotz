#!/bin/bash
# My own version of "ls", listing the current working directory's contents.
# @ZendaiOwl
white="$(tput setaf 15)"
directory="$(tput setaf 117)"
fil="$(tput setaf 48)"
red="$(tput setaf 196)"
reset="$(tput sgr0)"
for d in ./*
do 
	if [ -f "$d" ]; then
	OUT="$fil${d##./}$reset"
	elif [ -d "$d" ]; then
	OUT="$directory${d##./}$reset"
	else
	OUT="$red${d##./}$reset"
	fi
printf '%-48s\n' ${OUT}
done | column 

exit
