    mother(X,Y):-woman(X),parent(X,Y).
    father(X,Y):-man(X),parent(X,Y).
    son(X,Y):-man(Y),parent(X,Y).
    grandma(X,Z):-parent(X,Y),parent(Y,Z),woman(X).
    grandpa(X,F):-parent(X,Y),parent(Y,F),man(X).
    uncle(X,Y):-parent(Z,X),parent(Z,F),parent(F,Y),man(X),X\==F.
    brother(X,Y):-parent(Z,X),parent(Z,Y),man(X),X\==Y.
    plem(X,F):-parent(Z,F),man(F),parent(P,X),parent(P,Z),Z\==X.

    man("Evgeniy").
    man("Alex").
    man("Iliya").
    man("Yan").
    man("Sergey").
    woman("Olga").
    parent("Evgeniy","Alex").
    parent("Evgeniy","Iliya").
    parent("Olga","Alex").
    parent("Olga","Alex").
    parent("Iliya","Yan").
    parent("Iliya","Sergey").
    married("Evgeniy","Olga").

