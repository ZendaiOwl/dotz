#!/bin/bash
# @ZendaiOwl
#

f1(){
  echo '
Glyph:  
Character #255 FFh: Non-Breaking Space
Unicode Codepoint: U+00A0
String Escapes: "\377" "\xFF" "\u00A0" "\xC2\xA0"
';
}
f2(){
  echo '
Glyph:  
Character #0 00h: Blank (NUL - Null, End of String)
Unicode Codepoint: U+0000
String Escapes: "\0" "\x00" "\u0000" 
Control Key: ^@
';
}
f3(){
  echo '
Glyph: ░
Character #176 B0h: 25% Light Shade Block 
Unicode Codepoint: U+2591
String Escapes: "\260" "\xB0" "\u2591" "\xE2\x96\x91"
';
}
f4(){
  echo '
Glyph: ▒
Character #177 B1h: 50% Medium Shade Block
Unicode Codepoint: U+2592
String Escapes: "\261" "\xB1" "\u2592" "\xE2\x96\x92"
';
}
f5(){
  echo '
Glyph: ▓
Character #178 B2h: 75% Heavy Shade Block
Unicode Codepoint: U+2593
String Escapes: "\262" "\xB2" "\u2593" "\xE2\x96\x93"
';
}
f6(){
  echo '
Glyph: │
Character #179 B3h: Vertical 1x Line
Unicode Codepoint: U+2502
String Escapes: "\263" "\xB3" "\u2502" "\xE2\x94\x82"
';
}
f7(){
  echo '
Glyph: ┤
Character #180 B4h: Vertical 1x Line Joining Left
Unicode Codepoint: U+2524
String Escapes: "\264" "\xB4" "\u2524" "\xE2\x94\xA4"
';
}
f8(){
  echo '
Glyph: ╡
Character #181 B5h: Vertical 1x Line Joining Left 2x Line
Unicode Codepoint: U+2561
String Escapes: "\265" "\xB5" "\u2561" "\xE2\x95\xA1"
';
}
f9(){
  echo '
Glyph: ╢
Character #182 B6h: Vertical 2x Line Joining Left 1x Line
Unicode Codepoint: U+2562
String Escapes: "\266" "\xB6" "\u2562" "\xE2\x95\xA2"
';
}
f10(){
  echo '
Glyph: ╖
Character #183 B7h: Upper Right Corner 2x Vertical and 1x Horizontal
Unicode Codepoint: U+2556
String Escapes: "\267" "\xB7" "\u2556" "\xE2\x95\x96"
';
}
f11(){
  echo '
Glyph: ╕
Character #184 B8h: Upper Right Corner 1x Vertical and 2x Horizontal
Unicode Codepoint: U+2555
String Escapes: "\270" "\xB8" "\u2555" "\xE2\x95\x95"
';
}
f12(){
  echo '
Glyph: ╣
Character #185 B9h: Vertical 2x Line Joining Left
Unicode Codepoint: U+2563
String Escapes: "\271" "\xB9" "\u2563" "\xE2\x95\xA3"
';
}
f13(){
  echo '
Glyph: ║
Character #186 BAh: Vertical 2x Line
Unicode Codepoint: U+2551
String Escapes: "\272" "\xBA" "\u2551" "\xE2\x95\x91"
';
}
f14(){
  echo '
Glyph: ╗
Character #187 BBh: Upper Right Corner 2x Line
Unicode Codepoint: U+2557
String Escapes: "\273" "\xBB" "\u2557" "\xE2\x95\x97"
';
}
f15(){
  echo '
Glyph: ╝
Character #188 BCh: Lower Right Corner 2x Line
Unicode Codepoint: U+255D
String Escapes: "\274" "\xBC" "\u255D" "\xE2\x95\x9D"
';
}
f16(){
  echo '
Glyph: ╜
Character #189 BDh: Lower Right Corner 2x Vertical and 1x Horizontal
Unicode Codepoint: U+255C
String Escapes: "\275" "\xBD" "\u255C" "\xE2\x95\x9C"
';
}
f17(){
  echo '
Glyph: ╛
Character #190 BEh: Lower Right Corner 1x Vertical and 2x Horizontal
Unicode Codepoint: U+255B
String Escapes: "\276" "\xBE" "\u255B" "\xE2\x95\x9B"
';
}
f18(){
  echo '
Glyph: ┐
Character #191 BFh: Upper Right Corner 1x Line
Unicode Codepoint: U+2510
String Escapes: "\277" "\xBF" "\u2510" "\xE2\x94\x90"
';
}
f19(){
  echo '
Glyph: └
Character #192 C0h: Lower Left Corner 1x Line
Unicode Codepoint: U+2514
String Escapes: "\300" "\xC0" "\u2514" "\xE2\x94\x94"
';
}
f20(){
  echo '
Glyph: └
Character #192 C0h: Lower Left Corner 1x Line
Unicode Codepoint: U+2514
String Escapes: "\300" "\xC0" "\u2514" "\xE2\x94\x94"
';
}
f21(){
  echo '
Glyph: ┴
Character #193 C1h: Horizontal 1x Line Joining Above
Unicode Codepoint: U+2534
String Escapes: "\301" "\xC1" "\u2534" "\xE2\x94\xB4"
';
}
f22(){
  echo '
Glyph: ┬
Character #194 C2h: Horizontal 1x Line Joining Below
Unicode Codepoint: U+252C
String Escapes: "\302" "\xC2" "\u252C" "\xE2\x94\xAC"
';
}
f23(){
  echo '
Glyph: ├
Character #195 C3h: Vertical 1x Line Joining Right
Unicode Codepoint: U+251C
String Escapes: "\303" "\xC3" "\u251C" "\xE2\x94\x9C"
';
}
f24(){
  echo '
Glyph: ─
Character #196 C4h: Horizontal 1x Line
Unicode Codepoint: U+2500
String Escapes: "\304" "\xC4" "\u2500" "\xE2\x94\x80"
';
}
f25(){
  echo '
Glyph: ┼
Character #197 C5h: Crossing 1x Line
Unicode Codepoint: U+253C
String Escapes: "\305" "\xC5" "\u253C" "\xE2\x94\xBC"
';
}
f26(){
  echo '
Glyph: ╞
Character #198 C6h: Vertical 1x Line Joining Right 2x Line
Unicode Codepoint: U+255E
String Escapes: "\306" "\xC6" "\u255E" "\xE2\x95\x9E"
';
}
f27(){
  echo '
Glyph: ╟
Character #199 C7h: Vertical 2x Line Joining Right 1x Line
Unicode Codepoint: U+255F
String Escapes: "\307" "\xC7" "\u255F" "\xE2\x95\x9F"
';
}
f28(){
  echo '
Glyph: ╚
Character #200 C8h: Lower Left Corner 2x Line
Unicode Codepoint: U+255A
String Escapes: "\310" "\xC8" "\u255A" "\xE2\x95\x9A"
';
}
f29(){
  echo '
Glyph: ╔
Character #201 C9h: Upper Left Corner 2x Line
Unicode Codepoint: U+2554
String Escapes: "\311" "\xC9" "\u2554" "\xE2\x95\x94"
';
}
f30(){
  echo '
Glyph: ╩
Character #202 CAh: Horizontal 2x Line Joining Above
Unicode Codepoint: U+2569
String Escapes: "\312" "\xCA" "\u2569" "\xE2\x95\xA9"
';
}
f31(){
  echo '
Glyph: ╦
Character #203 CBh: Horizontal 2x Line Joining Below
Unicode Codepoint: U+2566
String Escapes: "\313" "\xCB" "\u2566" "\xE2\x95\xA6"
';
}
f32(){
  echo '
Glyph: ╠
Character #204 CCh: Vertical 2x Lines Joining Right
Unicode Codepoint: U+2560
String Escapes: "\314" "\xCC" "\u2560" "\xE2\x95\xA0"
';
}
f33(){
  echo '
Glyph: ═
Character #205 CDh: Horizontal 2x Line
Unicode Codepoint: U+2550
String Escapes: "\315" "\xCD" "\u2550" "\xE2\x95\x90"
';
}
f34(){
  echo '
Glyph: ╬
Character #206 CEh: Crossing 2x Line
Unicode Codepoint: U+256C
String Escapes: "\316" "\xCE" "\u256C" "\xE2\x95\xAC"
';
}
f35(){
  echo '
Glyph: ╧
Character #207 CFh: Horizontal 2x Line Joining Above 1x Line
Unicode Codepoint: U+2567
String Escapes: "\317" "\xCF" "\u2567" "\xE2\x95\xA7"
';
}
f36(){
  echo '
Glyph: ╨
Character #208 D0h: Horizontal 1x Line Joining Above 2x Line
Unicode Codepoint: U+2568
String Escapes: "\320" "\xD0" "\u2568" "\xE2\x95\xA8"
';
}
f37(){
  echo '
Glyph: ╤
Character #209 D1h: Horizontal 2x Line Joining Below 1x Line
Unicode Codepoint: U+2564
String Escapes: "\321" "\xD1" "\u2564" "\xE2\x95\xA4"
';
}
f38(){
  echo '
Glyph: ╥
Character #210 D2h: Horizontal 1x Line Joining Below 2x Line
Unicode Codepoint: U+2565
String Escapes: "\322" "\xD2" "\u2565" "\xE2\x95\xA5"
';
}
f39(){
  echo '
Glyph: ╙
Character #211 D3h: Lower Left Corner 2x Vertical 1x Horizontal
Unicode Codepoint: U+2559
String Escapes: "\323" "\xD3" "\u2559" "\xE2\x95\x99"
';
}
f40(){
  echo '
Glyph: ╘
Character #212 D4h: Lower Left Corner 1x Vertical 2x Horizontal
Unicode Codepoint: U+2558
String Escapes: "\324" "\xD4" "\u2558" "\xE2\x95\x98"
';
}
f41(){
  echo '
Glyph: ╒
Character #213 D5h: Upper Right Corner 1x Vertical 2x Horizontal
Unicode Codepoint: U+2552
String Escapes: "\325" "\xD5" "\u2552" "\xE2\x95\x92"
';
}
f42(){
  echo '
Glyph: ╓
Character #214 D6h: Upper Right Corner 2x Vertical 1x Horizontal
Unicode Codepoint: U+2553
String Escapes: "\326" "\xD6" "\u2553" "\xE2\x95\x93"
';
}
f43(){
  echo '
Glyph: ╫
Character #215 D7h: Crossing Vertical 2x Line and 1x Horizontal
Unicode Codepoint: U+256B
String Escapes: "\327" "\xD7" "\u256B" "\xE2\x95\xAB"
';
}
f44(){
  echo '
Glyph: ╪
Character #216 D8h: Crossing Vertical 1x Line and 2x Horizontal
Unicode Codepoint: U+256A
String Escapes: "\330" "\xD8" "\u256A" "\xE2\x95\xAA"
';
}
f45(){
  echo '
Glyph: ┘
Character #217 D9h: Lower Right Corner 1x Line
Unicode Codepoint: U+2518
String Escapes: "\331" "\xD9" "\u2518" "\xE2\x94\x98"
';
}
f46(){
  echo '
Glyph: ┌
Character #218 DAh: Upper Left Corner 1x Line
Unicode Codepoint: U+250C
String Escapes: "\332" "\xDA" "\u250C" "\xE2\x94\x8C"
';
}
f47(){
  echo '
Glyph: █
Character #219 DBh: 100% Solid Shade Block
Unicode Codepoint: U+2588
String Escapes: "\333" "\xDB" "\u2588" "\xE2\x96\x88"
';
}
f48(){
  echo '
Glyph: ▄
Character #220 DCh: Lower Half Block
Unicode Codepoint: U+2584
String Escapes: "\334" "\xDC" "\u2584" "\xE2\x96\x84"
';
}
f49(){
  echo '
Glyph: ▌
Character #221 DDh: Left Half Block
Unicode Codepoint: U+258C
String Escapes: "\335" "\xDD" "\u258C" "\xE2\x96\x8C"
';
}
f50(){
  echo '
Glyph: ▐
Character #222 DEh: Right Half Block
Unicode Codepoint: U+2590
String Escapes: "\336" "\xDE" "\u2590" "\xE2\x96\x90"
';
}
f51(){
echo '
Glyph: ▀
Character #223 DFh: Upper Half Block
Unicode Codepoint: U+2580
String Escapes: "\337" "\xDF" "\u2580" "\xE2\x96\x80"
';
}
f52(){
echo '
Glyph: ≡
Character #240 F0h: Identical-To Sign
Unicode Codepoint: U+2261
String Escapes: "\360" "\xF0" "\u2261" "\xE2\x89\xA1"
';
}

if [ "$#" -eq 0 ]; then
  f1; f2; f3; f4; f5; f6; f7; f8; f9; f10; f11; f12;
  f13; f14; f15; f16; f17; f18; f19; f20; f21; f22; 
  f23; f24; f25; f26; f27; f28; f29; f30; f31; f32; 
  f33; f34; f35; f36; f37; f38; f39; f40; f41; f42; 
  f43; f44; f45; f46; f47; f48; f49; f50; f51; f52;
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
