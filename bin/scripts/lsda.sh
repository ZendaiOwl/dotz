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
# dir="${dir:=$HOME}"
dir=$1
if [[ -e $dir ]] && [[ -d $dir ]]; then
	for files in "$dir"/* "$dir"/.*
	do
		if [[ -d $d ]] ; then
			printf '\e[32m%-12.48s\e[0m\n' "${files##*/}"
		elif [[ -x $d ]] ; then
			printf '\e[33m%-12.48s\e[0m\n' "${files##*/}"
		# elif [[ -w $d ]] ; then
			# printf '\e[32m%-12.48s\e[0m\n' "${files##*/}"
		elif [[ -S $d ]] ; then
			printf '\e[36m%-12.48s\e[0m\n' "${files##*/}"
		elif [[ -f $d ]] ; then
			printf '\e[39m%-12.48s\e[0m\n' "${files##*/}"
		elif [[ -e $d ]] ; then
			printf '\e[34m%-12.48s\e[0m\n' "${files##*/}"
		else
			printf '\e[31m%-12.48s\e[0m\n' "${files##*/}"
		fi

	done | column
else
	if [[ -z $dir ]] ; then
		printf '%-0.24s\n' "No directory specified."
	else
		printf '%-0.24s\n' "$dir: Directory not found."
	fi
fi

