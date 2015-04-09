word('home','дом').
word('friend','друг').
word('good','хороший').
word('mouse','мышь').
word('watch','часы').
word('clock','часы').
word('watch','смотреть').

menu1:-repeat,write("1-All words"),nl,
write("2-Translate to Russian"),nl,
write("3-Translate to English"),nl,nl,
read(N),do(N),N=0.

do(1):-word(X,Y),write(X),write("--"),write(Y),nl,fail.

do(2):-!,write("English word = "),
read(X),word(X,Y),write(X),write("--"),write(Y),nl,fail.

do(3):-!,write("Russian word = "),read(Y),
word(X,Y),write(Y),write("--"),write(X),nl,fail.

do(0).
