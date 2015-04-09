multiplication(0,Y,Z):-  Y<Z, write(Z),!.
multiplication(X,Y,Z):- Z1 is Z + Y, X1 is X-1, multiplication(X1, Y, Z1).
multiplication(X,Y):-multiplication(X,Y,0).
summa(X,Y):- Z is X + Y, write(Z).
