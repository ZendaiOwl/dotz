#!/bin/bash
# My own version of "ls", listing the current working directory's contents.
# @ZendaiOwl
for d in ./*
do 
printf '%-6s\n' "${d##./}"
done | column 

exit
