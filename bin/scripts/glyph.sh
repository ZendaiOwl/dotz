#!/usr/bin/env bash
# @ZendaiOwl
#

f1(){
  printf '%s\n' " ";
}
f2(){
  printf '%s\n' " ";
}
f3(){
  printf '%s\n' "░";
}
f4(){
  printf '%s\n' "▒";
}
f5(){
  printf '%s\n' "▓";
}
f6(){
  printf '%s\n' "█";
}
f7(){
  printf '%s\n' "╔";
}
f8(){
  printf '%s\n' "╚";
}
f9(){
  printf '%s\n' "╝";
}
f10(){
  printf '%s\n' "╗";
}
f11(){
  printf '%s\n' "═";
}
f12(){
  printf '%s\n' "║";
}
f13(){
  printf '%s\n' "╣";
}
f14(){
  printf '%s\n' "╩";
}
f15(){
  printf '%s\n' "╠";
}
f16(){
  printf '%s\n' "╦";
}
f17(){
  printf '%s\n' "╬";
}
f18(){
  printf '%s\n' "┐";
}
f19(){
  printf '%s\n' "└";
}
f20(){
  printf '%s\n' "┴";
}
f21(){
  printf '%s\n' "┬";
}
f22(){
  printf '%s\n' "├";
}
f23(){
  printf '%s\n' "│";
}
f24(){
  printf '%s\n' "─";
}
f25(){
  printf '%s\n' "┼";
}
f26(){
  printf '%s\n' "┤";
}
f27(){
  printf '%s\n' "┘";
}
f28(){
  printf '%s\n' "┌";
}
f29(){
  printf '%s\n' "╞";
}
f30(){
  printf '%s\n' "╢";
}
f31(){
  printf '%s\n' "╖";
}
f32(){
  printf '%s\n' "╡";
}
f33(){
  printf '%s\n' "╜";
}
f34(){
  printf '%s\n' "╛";
}
f35(){
  printf '%s\n' "╧";
}
f36(){
  printf '%s\n' "╨";
}
f37(){
  printf '%s\n' "╤";
}
f38(){
  printf '%s\n' "╥";
}
f39(){
  printf '%s\n' "╙";
}
f40(){
  printf '%s\n' "╘";
}
f41(){
  printf '%s\n' "╒";
}
f42(){
  printf '%s\n' "╓";
}
f43(){
  printf '%s\n' "╫";
}
f44(){
  printf '%s\n' "╪";
}
f45(){
  printf '%s\n' "╟";
}
f46(){
  printf '%s\n' "╕";
}
f47(){
  printf '%s\n' "█";
}
f48(){
  printf '%s\n' "▄";
}
f49(){
  printf '%s\n' "▌";
}
f50(){
  printf '%s\n' "▐";
}
f51(){
  printf '%s\n' "▀";
}
f52(){
  printf '%s\n' "≡";
}
esc() {
  printf '\n';
}

if [ "$#" -eq 0 ]; then
  f1; f2; f3; f4; f5; f6; f7; f8; f9; f10; f11; f12;
  f13; f14; f15; f16; f17; f18; f19; f20; f21; f22; 
  f23; f24; f25; f26; f27; f28; f29; f30; f31; f32; 
  f33; f34; f35; f36; f37; f38; f39; f40; f41; f42; 
  f43; f44; f45; f46; f47; f48; f49; f50; f51; f52;
  esc;
elif [ "$1" -eq 0 ]; then
esc;
elif [ "$1" -eq 1 ]; then
f1;
elif [ "$1" -eq 2 ]; then
f2;
elif [ "$1" -eq 3 ]; then
f3;
elif [ "$1" -eq 4 ]; then
f4;
elif [ "$1" -eq 5 ]; then
f5;
elif [ "$1" -eq 6 ]; then
f6;
elif [ "$1" -eq 7 ]; then
f7;
elif [ "$1" -eq 8 ]; then
f8;
elif [ "$1" -eq 9 ]; then
f9;
elif [ "$1" -eq 10 ]; then
f10;
elif [ "$1" -eq 11 ]; then
f11;
elif [ "$1" -eq 12 ]; then
f12;
elif [ "$1" -eq 13 ]; then
f13;
elif [ "$1" -eq 14 ]; then
f14;
elif [ "$1" -eq 15 ]; then
f15;
elif [ "$1" -eq 16 ]; then
f16;
elif [ "$1" -eq 17 ]; then
f17;
elif [ "$1" -eq 18 ]; then
f18;
elif [ "$1" -eq 19 ]; then
f19;
elif [ "$1" -eq 20 ]; then
f20;
elif [ "$1" -eq 21 ]; then
f21;
elif [ "$1" -eq 22 ]; then
f22;
elif [ "$1" -eq 23 ]; then
f23;
elif [ "$1" -eq 24 ]; then
f24;
elif [ "$1" -eq 25 ]; then
f25;
elif [ "$1" -eq 26 ]; then
f26;
elif [ "$1" -eq 27 ]; then
f27;
elif [ "$1" -eq 28 ]; then
f28;
elif [ "$1" -eq 29 ]; then
f29;
elif [ "$1" -eq 30 ]; then
f30;
elif [ "$1" -eq 31 ]; then
f31;
elif [ "$1" -eq 32 ]; then
f32;
elif [ "$1" -eq 33 ]; then
f33;
elif [ "$1" -eq 34 ]; then
f34;
elif [ "$1" -eq 35 ]; then
f35;
elif [ "$1" -eq 36 ]; then
f36;
elif [ "$1" -eq 37 ]; then
f37;
elif [ "$1" -eq 38 ]; then
f38;
elif [ "$1" -eq 39 ]; then
f39;
elif [ "$1" -eq 40 ]; then
f40;
elif [ "$1" -eq 41 ]; then
f41;
elif [ "$1" -eq 42 ]; then
f42;
elif [ "$1" -eq 43 ]; then
f43;
elif [ "$1" -eq 44 ]; then
f44;
elif [ "$1" -eq 45 ]; then
f45;
elif [ "$1" -eq 46 ]; then
f46;
elif [ "$1" -eq 47 ]; then
f47;
elif [ "$1" -eq 48 ]; then
f48;
elif [ "$1" -eq 49 ]; then
f49;
elif [ "$1" -eq 50 ]; then
f50;
elif [ "$1" -eq 51 ]; then
f51;
elif [ "$1" -eq 52 ]; then
f52;
else
  printf '%s' "Invalid number of arguments. 
  Please enter a number between 1 and 52."
  printf '\n'
fi

exit
