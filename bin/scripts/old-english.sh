#!/usr/bin/env bash

set -euo pipefail

# Symbols
# ࿓ 	: Tibetan Mark Initial Brda Rnying Yig Mgo Mdun Ma. 
# ࿔		: Tibetan Mark Closing Brda Rnying Yig Mgo Sgab Ma. 
# ご		: Hiragana Letter Go. 
# »		: Right-Pointing Double Angle Quotation MarkRight-Pointing Double Angle Quotation Mark
# º		: Masculine Ordinal Indicator
# °		: Degree Sign
# ʪ		: Latin Small Letter Ls Digraph. IPA Extensions.
# ␡		: Delete. Basic Latin.
# ƪ		: Latin Letter Reversed Esh Loop. Latin Extended-B.
# ʩ 	: Latin Small Letter Feng Digraph. IPA Extensions.
# ː 	: Modifier Letter Triangular Colon. Spacing Modifier Letters.
# ˔ 		: Modifier Letter Up Tack. Spacing Modifier Letters.
# ˕ 		: Modifier Letter Down Tack. Spacing Modifier Letters.
# ˽ 		: Modifier Letter Shelf. Spacing Modifier Letters.
# ̷ 	: Combining Short Solidus Overlay. Combining Diacritical Marks.
# ̸ 	: Combining Long Solidus Overlay. Combining Diacritical Marks.
# ̻ 		: Combining Square Below. Combining Diacritical Marks.
#  ͆		: Combining Bridge Above. Combining Diacritical Marks.
#  ͌		: Combining Almost Equal To Above. Combining Diacritical Marks.
#  ͍		: Combining Left Right Arrow Below. Combining Diacritical Marks.
#  ͜		: Combining Double Breve Below. Combining Diacritical Marks.
# ͡ 	: Combining Double Inverted Breve. Combining Diacritical Marks.
#  ͢		: Combining Double Rightwards Arrow Below. Combining Diacritical Marks.
# ☞		: White Right Pointing Index
# ☟		: White Down Pointing Index
# ☛		: Black Right Pointing Index
# ☚		: Black Left Pointing Index
# ☝		: White Up Pointing Index
# ↬		: Rightwards Arrow with Loop
# ↫ 	: Leftwards Arrow with Loop
# ↤		: Leftwards Arrow from Bar
# ↢		: Leftwards Arrow with Tail
# ⤜ 	: Rightwards Double Arrow-Tail
# ⥤		: Rightwards Harpoon with Barb Up Above Rightwards Harpoon with Barb Down
# ➪		: Left-Shaded White Rightwards Arrow
# ➳ 	: White-Feathered Rightwards Arrow
# ➵ 	: Black-Feathered Rightwards Arrow
# ➺		: Teardrop-Barbed Rightwards Arrow
# ➼		: Wedge-Tailed Rightwards Arrow
# ➽		: Heavy Wedge-Tailed Rightwards Arrow
# ➾		: Open-Outlined Rightwards Arrow
# ➙		: Heavy Rightwards Arrow
# ❯		: Heavy Right-Pointing Angle Quotation Mark Ornament
# ❮		: Heavy Left-Pointing Angle Quotation Mark Ornament
# ❱		: Heavy Right-Pointing Angle Bracket Ornament
# ❰		: Heavy Left-Pointing Angle Bracket Ornament
# ▲		: Black Up-Pointing Triangle
# ▼ 	: Black Down-Pointing Triangle
# ◀ 	: Black Left-Pointing Triangle
# ▶ 	: Black Right-Pointing Triangle
# ↕ 	: Up Down Arrow
# ⬍ 	: Up Down Black Arrow

# 💮 ⚘ 🎕  ᪥  🌸  ᪥ 💠 🎴

# ↖ ↗ ↘ ↙ ⇱ ⇲ ⤣ ⤤ ⤥ ⤦ ➶ ➴ ➷ ➹ ➘ ➚ 	: Arrows

# 🢔 🢖 🢕 🢗 : Arrows Within Triangle Arrowhead

# ■ □ 🞑 🞒 🞓 ▦ ▤ ⧈ ▨ ▧ 🢜 🢝 🢞 🢟 🢬 🢭 : Squares "Arrow Shafts" 

# Playing Cards
# ♠		: Black Spade Suit Emoji U+2660
# ♤ 	: White Spade Suit
# ♥ 	: Black Heart Suit
# ♡ 	: White Heart Suit
# ♣ 	: Black Club Suit
# ♧ 	: White Club Suit
# ♦ 	: Black Diamond Suit
# ♢ 	: White Diamond Suit

# 🔮 	: Crystal Ball Emoji U+1F52E
# 🧿 	: evil eye talisman U+1F9FF
# ℻ 	: Facsimile Sign
# ∞ 	: Infinity 
# √ 	; Square root
# ✓ 	: Check sign
# ∨ 	: Logical Or
# ♀ 	: Female sign
# ⚢ 	: Double female sign
# ♂ 	: Male sign
# ⚣ 	: Double male sign
# ⌘ 	: Place of interest sign
# ♲ 	: Universal recycling symbol
# ᖘ  	: Canadian Syllabics Sayisi Shi
# Ꭾ  	: Cherokee Letter He
# Ꮅ  	: Cherokee Letter Li
# ☾ 	: Last quarter moon
# ⊂ 	: Subset of 

# ℰ 	: Script capital E 
# ℱ 	: Script capital F 
# ℋ 	: Script capital H
# ℐ 	: Script capital I
# ℒ 	: Script capital L
# ℳ 	: Script capital M
# ℴ 		: Script small O
# ℘ 	: Script capital P
# ℛ 	: Script capital R

# ℑ 	: Black-Letter Capital J

# ᚨ 	: Runic Letter Ansuz A
# ᚩ 	: Runic Letter Os O
# ᚪ 	: Runic Letter Ac A
# ᚫ 	: Runic Letter Aesc

# † 	: Dagger

# Neckbeard OS
# 𝕹𝖊𝖈𝖐𝖇𝖊𝖆𝖗𝖉 𝕺𝕾

# Lockpad
# 🔒 U+1F512

# Music note
# ♬ U+266C

# Airplane
# ✈ U+2708

# Star
# ☆ U+2606

# Ballot box with X
# ☒ U+2612

# Beautiful old style english alphabet:
#
### Lower case letters
#
# 𝖆
# U+1D586
a(){ printf "\U1d586"; }
# 𝖇
# U+1D587
b(){ printf "\U1d587"; }
# 𝖈
# U+1D588
c(){ printf "\U1D588"; }
# 𝖉
# U+1D589
d(){ printf "\U1D589"; }
# 𝖊
# U+1D58A
e(){ printf "\U1D58A"; }
# 𝖋
# U+1D58B
f(){ printf "\U1D58B"; }
# 𝖌
# U+1D58C
g(){ printf "\U1D58C"; }
# 𝖍
# U+1D58D
h(){ printf "\U1D58D"; }
# 𝖎
# U+1D58E
i(){ printf "\U1D58E"; }
# 𝖏
# U+1D58F
j(){ printf "\U1D58F"; }
# 𝖐
# U+1D590
k(){ printf "\U1D590"; }
# 𝖑
# U+1D591
l(){ printf "\U1D591"; }
# 𝖒
# U+1D592
m(){ printf "\U1D592"; }
# 𝖓
# U+1D593
n(){ printf "\U1D593"; }
# 𝖔
# U+1D594
o(){ printf "\U1D594"; }
# 𝖕
# U+1D595
p(){ printf "\U1D595"; }
# 𝖖
# U+1D596
q(){ printf "\U1D596"; }
# 𝖗
# U+1D597
r(){ printf "\U1D597"; }
# 𝖘
# U+1D598
s(){ printf "\U1D598"; }
# 𝖙
# U+1D599
t(){ printf "\U1D599"; }
# 𝖚
# U+1D59A
u(){ printf "\U1D59A"; }
# 𝖛
# U+1D59B
v(){ printf "\U1D59B"; }
# 𝖜
# U+1D59C
w(){ printf "\U1D59C"; }
# 𝖝
# U+1D59D
x(){ printf "\U1D59D"; }
# 𝖞
# U+1D59E
y(){ printf "\U1D59E"; }
# 𝖟
# U+1D59F
z(){ printf "\U1D59F"; }
#
### Capital letters
#
# 𝕬
# U+1D56C
A(){ printf "\U1D56C"; }
# 𝕭
# U+1D56D
B(){ printf "\U1D56D"; }
# 𝕮
# U+1D56E
C(){ printf "\U1D56E"; }
# 𝕯
# U+1D56F
D(){ printf "\U1D56F"; }
# 𝕰
# U+1D570
E(){ printf "\U1D570"; }
# 𝕱
# U+1D571
F(){ printf "\U1D571"; }
# 𝕲
# U+1D572
G(){ printf "\U1D572"; }
# 𝕳
# U+1D573
H(){ printf "\U1D573"; }
# 𝕴
# U+1D574
I(){ printf "\U1D574"; }
# 𝕵
# U+1D575
J(){ printf "\U1D575"; }
# 𝕶
# U+1D576
K(){ printf "\U1D576"; }
# 𝕷
# U+1D577
L(){ printf "\U1D577"; }
# 𝕸
# U+1D578
M(){ printf "\U1D578"; }
# 𝕹
# U+1D579
N(){ printf "\U1D579"; }
# 𝕺
# U+1D57A
O(){ printf "\U1D57A"; }
# 𝕻
# U+1D57B
P(){ printf "\U1D57B"; }
# 𝕼
# U+1D57C
Q(){ printf "\U1D57C"; }
# 𝕽
# U+1D57D
R(){ printf "\U1D57D"; }
# 𝕾
# U+1D57E
S(){ printf "\U1D57E"; }
# 𝕿
# U+1D57F
T(){ printf "\U1D57F"; }
# 𝖀
# U+1D580
U(){ printf "\U1D580"; }
# 𝖁
# U+1D581
V(){ printf "\U1D581"; }
# 𝖂
# U+1D582
W(){ printf "\U1D582"; }
# 𝖃
# U+1D583
X(){ printf "\U1D583"; }
# 𝖄
# U+1D584
Y(){ printf "\U1D584"; }
# 𝖅
# U+1D585
Z(){ printf "\U1D585"; }

for x in "${@}"; do
	for (( i=0; i<"${#x}"; i++ )); do
    if [[ "${x:i:1}" == "A" ]]; then
      A;
    elif [[ "${x:i:1}" == "B" ]]; then
      B;
    elif [[ "${x:i:1}" == "C" ]]; then
      C;
    elif [[ "${x:i:1}" == "D" ]]; then
      D;
    elif [[ "${x:i:1}" == "E" ]]; then
      E;
    elif [[ "${x:i:1}" == "F" ]]; then
      F;
    elif [[ "${x:i:1}" == "G" ]]; then
      G;
    elif [[ "${x:i:1}" == "H" ]]; then
      H;
    elif [[ "${x:i:1}" == "I" ]]; then
      I;
    elif [[ "${x:i:1}" == "J" ]]; then
      J;
    elif [[ "${x:i:1}" == "K" ]]; then
      K;
    elif [[ "${x:i:1}" == "L" ]]; then
      L;
    elif [[ "${x:i:1}" == "M" ]]; then
      M;
    elif [[ "${x:i:1}" == "N" ]]; then
      N;
    elif [[ "${x:i:1}" == "O" ]]; then
      O;
    elif [[ "${x:i:1}" == "P" ]]; then
      P;
    elif [[ "${x:i:1}" == "Q" ]]; then
      Q;
    elif [[ "${x:i:1}" == "R" ]]; then
      R;
    elif [[ "${x:i:1}" == "S" ]]; then
      S;
    elif [[ "${x:i:1}" == "T" ]]; then
      T;
    elif [[ "${x:i:1}" == "U" ]]; then
      U;
    elif [[ "${x:i:1}" == "V" ]]; then
      V;
    elif [[ "${x:i:1}" == "W" ]]; then
      W;
    elif [[ "${x:i:1}" == "X" ]]; then
      X;
    elif [[ "${x:i:1}" == "Y" ]]; then
      Y;
    elif [[ "${x:i:1}" == "Z" ]]; then
      Z;
    elif [[ "${x:i:1}" == "a" ]]; then
      a;
    elif [[ "${x:i:1}" == "b" ]]; then
      b;
    elif [[ "${x:i:1}" == "c" ]]; then
      c;
    elif [[ "${x:i:1}" == "d" ]]; then
      d;
    elif [[ "${x:i:1}" == "e" ]]; then
      e;
    elif [[ "${x:i:1}" == "f" ]]; then
      f;
    elif [[ "${x:i:1}" == "g" ]]; then
      g;
    elif [[ "${x:i:1}" == "h" ]]; then
      h;
    elif [[ "${x:i:1}" == "i" ]]; then
      i;
    elif [[ "${x:i:1}" == "j" ]]; then
      j;
    elif [[ "${x:i:1}" == "k" ]]; then
      k;
    elif [[ "${x:i:1}" == "l" ]]; then
      l;
    elif [[ "${x:i:1}" == "m" ]]; then
      m;
    elif [[ "${x:i:1}" == "n" ]]; then
      n;
    elif [[ "${x:i:1}" == "o" ]]; then
      o;
    elif [[ "${x:i:1}" == "p" ]]; then
      p;
    elif [[ "${x:i:1}" == "q" ]]; then
      q;
    elif [[ "${x:i:1}" == "r" ]]; then
      r;
    elif [[ "${x:i:1}" == "s" ]]; then
      s;
    elif [[ "${x:i:1}" == "t" ]]; then
      t;
    elif [[ "${x:i:1}" == "u" ]]; then
      u;
    elif [[ "${x:i:1}" == "v" ]]; then
      v;
    elif [[ "${x:i:1}" == "w" ]]; then
      w;
    elif [[ "${x:i:1}" == "x" ]]; then
      x;
    elif [[ "${x:i:1}" == "y" ]]; then
      y;
    elif [[ "${x:i:1}" == "z" ]]; then
      z;
    else
      printf '%s' "${x:i:1}";
    fi
	done
done
printf '\n';

exit 0
