multiplication(_,0,0):-  write(0),!.
multiplication(0,_,0):-  write(0),!.
multiplication(1,Y,Z,K):-  K is Z + Y, !.
multiplication(X,Y,Z,K):- Z1 is Z + Y, X1 is X-1, multiplication(X1, Y, Z1,K).
multiplication(X,Y):-multiplication(X,Y,0,K), write(K).
