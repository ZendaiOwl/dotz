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
	printf '%-48s' "$fil${d##./}$reset"
	elif [ -d "$d" ]; then
	printf '%-48s' "$directory${d##./}$reset"
	else
	printf '%-48s' "$red${d##./}$reset"
	fi
printf '\n'
done | column -s '\n'

exit
