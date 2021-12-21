#!/bin/bash
for r in {200..255..5}; do fb=4;g=1;b=1;printf '\e[0;%s8;2;%s;%s;%sm   ' "$fb" "$r" "$g" "$b"; done; echo
exit
