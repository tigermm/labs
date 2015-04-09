multiplication(1,Y,Z):-  Z is Y,!.
multiplication(X,Y,Z):-  X1 is X-1, multiplication(X1, Y, Z1), Z is Z1 + Y.
