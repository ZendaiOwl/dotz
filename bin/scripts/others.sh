#!/bin/bash

# Colours


printf '\e[%sm▒' {30..37} 0; echo           ### foreground

printf '\e[%sm ' {40..47} 0; echo           ### background

printf '\e[48;5;%dm ' {0..255}; printf '\e[0m \n'

color(){
    for c; do
        printf '\e[48;5;%dm%03d' "$c" "$c"
    done
    printf '\e[0m \n'
}

IFS=$' \t\n'
color {0..15}
for ((i=0;i<6;i++)); do
    color $(seq $((i*36+16)) $((i*36+51)))
done
color {232..255}


mode2header(){
    #### For 16 Million colors use \e[0;38;2;R;G;Bm each RGB is {0..255}
    printf '\e[mR\n' # reset the colors.
    printf '\n\e[m%59s\n' "Some samples of colors for r;g;b. Each one may be 000..255"
    printf '\e[m%59s\n'   "for the ansi option: \e[0;38;2;r;g;bm or \e[0;48;2;r;g;bm :"
}
mode2colors(){
    # foreground or background (only 3 or 4 are accepted)
    local fb="$1"
    [[ $fb != 3 ]] && fb=4
    local samples=(0 63 127 191 255)
    for         r in "${samples[@]}"; do
        for     g in "${samples[@]}"; do
            for b in "${samples[@]}"; do
                printf '\e[0;%s8;2;%s;%s;%sm%03d;%03d;%03d ' "$fb" "$r" "$g" "$b" "$r" "$g" "$b"
            done; printf '\e[m\n'
        done; printf '\e[m'
    done; printf '\e[mReset\n'
}
mode2header
mode2colors 3
mode2colors 4



exit
