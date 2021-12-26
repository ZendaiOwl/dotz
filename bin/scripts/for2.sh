#!/bin/sh
for i in hello 1 * 2 goodbye 
do
  echo "Looping ... i is set to ${i}"
done
# Greedy example.
format="%6s\t%6s\n"
for file in *; do
    printf '%s\n' "$file"
done

