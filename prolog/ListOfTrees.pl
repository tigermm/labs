print_tree(empty):-!.
print_tree(tree(Root, Left, Right)):- nl, print_tree(Left),write(Root), write(" "), print_tree(Right).
printlist([H|T]):-print_tree(H), nl, printlist(T).
split([], []).
split([X|L], [X|L1]):- X \== empty, split(L, L1).
split([X|L], L1):- X == empty,split(L, L1).

split([tree(3,tree(6, empty, empty),tree(4, empty, empty)),empty,tree(2, empty, empty)],L), printlist(L).
