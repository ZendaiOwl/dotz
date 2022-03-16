#!/usr/bin/env bash
set -euo pipefail
# You should have received a copy of the GNU General Public License
# @ZendaiOwl
# A colour scheme library for the terminal.
#
# Copyright (C) 2021  Victor-ray S. [ https://github.com/ZendaiOwl ]
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
#

BOLD="$(tput bold)"
# BLACK="$(tput setaf 0)"
DARK_RED="$(tput setaf 1)"
# DARK_GREEN="$(tput setaf 2)"
# DARK_ORANGE="$(tput setaf 3)"
# DARK_BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
# DARK_GRAY="$(tput setaf 6)"
# CYAN="$(tput setaf 7)"
GREEN="$(tput setaf 10)"
# ORANGE="$(tput setaf 11)"
# BLUE="$(tput setaf 12)"
# RED_ORANGE="$(tput setaf 13)"
# GRAY="$(tput setaf 14)"
WHITE="$(tput setaf 15)"

NICE_ONE="$(tput setaf 51)"

RED="$(tput setaf 9)"
PURPLE="$(tput setaf 125)"
RESET="$(tput sgr0)"

nice()
{
	STR=$1
	echo "$NICE_ONE$STR$RESET"
}

bold()
{
	STR=$1
	echo "$BOLD$STR$RESET"
}

dark_red()
{
	STR=$1
	echo "$DARK_RED$STR$RESET"
}

red()
{
	STR=$1
	echo "$RED$1$RESET"

green()
{
	STR=$1
	echo "$GREEN$STR$RESET"
}

magenta()
{
	STR=$1
	echo "$MAGENTA$STR$RESET"
}

white()
{
	STR=$1
	echo "$WHITE$STR$RESET"
}

purple()
{
	STR=$1
	echo "$PURPLE$STR$RESET"
}
}

if [ "$1" == "nice" ]
then
	nice "$2"
fi
