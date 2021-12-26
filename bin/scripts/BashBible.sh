#!/bin/bash
# pure sh bible
# A collection of pure POSIX sh alternatives to external processes.

lstrip() {
    # Usage: lstrip "string" "pattern"
    printf '%s\n' "${1##$2}"
}

rstrip() {
    # Usage: rstrip "string" "pattern"
    printf '%s\n' "${1%%$2}"
}

trim_string() {
    # Usage: trim_string "   example   string    "
    : "${1#"${1%%[![:space:]]*}"}"
    : "${_%"${_##*[![:space:]]}"}"
    printf '%s\n' "$_"
}


# shellcheck disable=SC2086,SC2048
trim_all() {
    # Usage: trim_all "   example   string    "

    # Disable globbing to make the word-splitting below safe.
    set -f

    # Set the argument list to the word-splitted string.
    # This removes all leading/trailing white-space and reduces
    # all instances of multiple spaces to a single ("  " -> " ").
    set -- $*

    # Print the argument list as a string.
    printf '%s\n' "$*"

    # Re-enable globbing.
    set +f
}

case_check() {
# Check if string contains a sub-string
# Using a case statement:

case $var in
    *sub_string1*)
        # Do stuff
    ;;

    *sub_string2*)
        # Do other stuff
    ;;

    *)
        # Else
    ;;
esac
}
case_check_start()  {
# Check if string starts with sub-string
# Using a case statement:

case $var in
    sub_string1*)
        # Do stuff
    ;;

    sub_string2*)
        # Do other stuff
    ;;

    *)
        # Else
    ;;
esac
}
case_check_end() {
# Check if string ends with sub-string
# Using a case statement:

case $var in
    *sub_string1)
        # Do stuff
    ;;

    *sub_string2)
        # Do other stuff
    ;;

    *)
        # Else
    ;;
esac
}

# Split a string on a delimiter
# This is an alternative to cut, awk and other tools.

# Example Function:

split() {
    # Disable globbing.
    # This ensures that the word-splitting is safe.
    set -f

    # Store the current value of 'IFS' so we
    # can restore it later.
    old_ifs=$IFS

    # Change the field separator to what we're
    # splitting on.
    IFS=$2

    # Create an argument list splitting at each
    # occurance of '$2'.
    #
    # This is safe to disable as it just warns against
    # word-splitting which is the behavior we expect.
    # shellcheck disable=2086
    set -- $1

    # Print each list value on its own line.
    printf '%s\n' "$@"

    # Restore the value of 'IFS'.
    IFS=$old_ifs

    # Re-enable globbing.
    set +f
}

regex() {
    # Usage: regex "string" "regex"
    [[ $1 =~ $2 ]] && printf '%s\n' "${BASH_REMATCH[1]}"
}


# Trim quotes from a string
# Example Function:

trim_quotes() {
    # Usage: trim_quotes "string"

    # Disable globbing.
    # This makes the word-splitting below safe.
    set -f

    # Store the current value of 'IFS' so we
    # can restore it later.
    old_ifs=$IFS

    # Set 'IFS' to ["'].
    IFS=\"\'

    # Create an argument list, splitting the
    # string at ["'].
    #
    # Disable this shellcheck error as it only
    # warns about word-splitting which we expect.
    # shellcheck disable=2086
    set -- $1

    # Set 'IFS' to blank to remove spaces left
    # by the removal of ["'].
    IFS=

    # Print the quote-less string.
    printf '%s\n' "$*"

    # Restore the value of 'IFS'.
    IFS=$old_ifs

    # Re-enable globbing.
    set +f
}

# Split a string on a delimiter
# CAVEAT: Requires bash 4+
# 
# This is an alternative to cut, awk and other tools.
# 
# Example Function:
# 

split() {
   # Usage: split "string" "delimiter"
   IFS=$'\n' read -d "" -ra arr <<< "${1//$2/$'\n'}"
   printf '%s\n' "${arr[@]}"
}

# Change a string to lowercase
lower() {
    # Usage: lower "string"
    printf '%s\n' "${1,,}"
}

# Change a string to uppercase
upper() {
    # Usage: upper "string"
    printf '%s\n' "${1^^}"
}

# Reverse a string case
reverse_case() {
    # Usage: reverse_case "string"
    printf '%s\n' "${1~~}"
}

# Trim quotes
trim_quotes() {
    # Usage: trim_quotes "string"
    : "${1//\'}"
    printf '%s\n' "${_//\"}"
}

# Strip all instances of pattern from string
strip_all() {
    # Usage: strip_all "string" "pattern"
    printf '%s\n' "${1//$2}"
}

# Strip first occurrence of pattern from string
strip() {
    # Usage: strip "string" "pattern"
    printf '%s\n' "${1/$2}"
}

reverse_array() {
    # Usage: reverse_array "array"
    shopt -s extdebug
    f()(printf '%s\n' "${BASH_ARGV[@]}"); f "$@"
    shopt -u extdebug
}

remove_array_dups() {
    # Usage: remove_array_dups "array"
    declare -A tmp_array

    for i in "$@"; do
        [[ $i ]] && IFS=" " tmp_array["${i:- }"]=1
    done

    printf '%s\n' "${!tmp_array[@]}"
}

random_array_element() {
    # Usage: random_array_element "array"
    local arr=("$@")
    printf '%s\n' "${arr[RANDOM % $#]}"
}

lines() {
    # Usage: lines "file"
    mapfile -tn 0 lines < "$1"
    printf '%s\n' "${#lines[@]}"
}

## Cycle through an array

# Each time the `printf` is called, the next array element is printed. When
# the print hits the last array element it starts from the first element
# again.
arr=(a b c d)

cycle() {
    printf '%s ' "${arr[${i:=0}]}"
    ((i=i>=${#arr[@]}-1?0:++i))
}



## FILES
# Parsing a key=val file.
# This could be used to parse a simple key=value configuration file.
# Setting 'IFS' tells 'read' where to split the string.
while IFS='=' read -r key val; do
    # Skip over lines containing comments.
    # (Lines starting with '#').
    [ "${key##\#*}" ] || continue

    # '$key' stores the key.
    # '$val' stores the value.
    printf '%s: %s\n' "$key" "$val"

    # Alternatively replacing 'printf' with the following
    # populates variables called '$key' with the value of '$val'.
    #
    # NOTE: I would extend this with a check to ensure 'key' is
    #       a valid variable name.
    # export "$key=$val"
    #
    # Example with error handling:
    # export "$key=$val" 2>/dev/null ||
    #     printf 'warning %s is not a valid variable name\n' "$key"
done < "file"

## Get the first N lines of a file
# Alternative to the head command.
# Example Function:

head() {
    # Usage: head "n" "file"
    while IFS= read -r line; do
        printf '%s\n' "$line"
        i=$((i+1))
        [ "$i" = "$1" ] && return
    done < "$2"

    # 'read' used in a loop will skip over
    # the last line of a file if it does not contain
    # a newline and instead contains EOF.
    #
    # The final line iteration is skipped as 'read'
    # exits with '1' when it hits EOF. 'read' however,
    # still populates the variable.
    #
    # This ensures that the final line is always printed
    # if applicable.
    [ -n "$line" ] && printf %s "$line"
}

# Prompt
# Get the number of lines in a file
# Alternative to wc -l.
# Example Function:

lines() {
    # Usage: lines "file"

    # '|| [ -n "$line" ]': This ensures that lines
    # ending with EOL instead of a newline are still
    # operated on in the loop.
    #
    # 'read' exits with '1' when it sees EOL and
    # without the added test, the line isn't sent
    # to the loop.
    while IFS= read -r line || [ -n "$line" ]; do
        lines=$((lines+1))
    done < "$1"

    printf '%s\n' "$lines"
}

# Example Function:

count() {
    # Usage: count /path/to/dir/*
    #        count /path/to/dir/*/
    [ -e "$1" ] \
        && printf '%s\n' "$#" \
        || printf '%s\n' 0
}

# Example Usage:
# Count all files in dir.
# $ count ~/Downloads/*
# 232

# Count all dirs in dir.
# $ count ~/Downloads/*/
# 45

# Count all jpg files in dir.
# $ count ~/Pictures/*.jpg
# 64

# Create an empty file
# Alternative to touch.
# :>file

# OR (shellcheck warns for this)
# >file








exit
