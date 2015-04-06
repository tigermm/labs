word("home","dom").
word("friend","друг").
word("good","хороший").
word("mouse",'мышь').
word('watch','chasi').

menu:-repeat,write("1-All books"),nl,
write("2-Find book by name"),nl,
write("3-Find book by price"),nl,
write("0-exit"),nl,nl,
read(N),do(N),N=0.

do(1):-word(X,Y),write(X),write("--"),write(Y),write("--"),nl,fail.

do(2):-!,write("English word = "),
readln(X),word(X,Y),
write(X),write("--"),write(Y),nl,fail.

do(3):-!,write("Russian word = "),readln(Y),
word(X,Y),write(X),write("--"),write(Y),nl,fail.

do(0).

