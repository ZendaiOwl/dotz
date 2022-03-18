#!/usr/bin/env bash
set -euo pipefail
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
# Yellow/Orange	33
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
# Yellow/Orange	43
# Blue			44
# Magenta		45
# Cyan			46
# White			47
# Default		48
# Reset			0
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# printf '\e[33m %-12.48s \e[37m %-12.48s \e[36m %-12.48s \e[0m\n' "${DIR[@]}" "${FILE[@]}" "${OTHER[@]}" | column
# DIR=()
# FILE=()
# OTHER=()
# OUT=()

if [[ $# == 0 ]]; then
	dir="$(pwd)"
else
	dir="$1"
fi

if [[ -z $dir ]]; then
	for d in ./*
	do
		if [[ -d $d ]]; then
			printf '\e[32m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -x $d ]] && [[ -f $d ]]; then
			printf '\e[33m%-12.48s\e[0m\n' "${d##*/}"
		# elif [[ -w $d ]] ; then
			# printf '\e[33m %-12.48s \e[0m\n' "${d##*/}"
		elif [[ -S $d ]]; then
			printf '\e[36m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -f $d ]] && [[ ! -x $d ]]; then
			printf '\e[39m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -e $d ]]; then
			printf '\e[34m %-12.36s \e[0m\n' "${d##*/}"
		else
			printf '\e[31m %-12.36s \e[0m\n' "${d##*/}"
		fi
	done | column
else
	if [[ -e $dir ]]; then
		for d in "$dir"/*
		do
		if [[ -d $d ]]; then
			printf '\e[32m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -x $d ]] && [[ -f $d ]]; then
			printf '\e[33m%-12.48s\e[0m\n' "${d##*/}"
		# elif [[ -w $d ]] ; then
			# printf '\e[32m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -S $d ]]; then
			printf '\e[36m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -f $d ]] && [[ ! -x $d ]]; then
			printf '\e[39m%-12.48s\e[0m\n' "${d##*/}"
		elif [[ -e $d ]]; then
			printf '\e[34m %-12.36s \e[0m\n' "${d##*/}"
		else
			printf '\e[31m %-12.36s \e[0m\n' "${d##*/}"
		fi
		done | column
	else
		printf '%-0.24s \n' "$dir: Directory not found."
	fi
fi

exit
