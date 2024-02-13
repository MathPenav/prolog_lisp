griffe(lion).
griffe(chat).

enlever(X, [X|Q], Q ) .
enlever(X, [Y|Q], [Y|Q1] ) :- enlever(X, Q, Q1) .

permut([],[]).
permut(L,[X|L2]) :- enlever(X,L,L1), permut(L1,L2).

generer(L) :- permut([ver,serpent,chat,pingouin,lion,canard],L).

entre(X,Y,Z,[X,Y,Z|Q]).
entre(X,Y,Z,[Z,Y,X|Q]).
entre(X,Y,Z,[T|Q]) :- entre(X,Y,Z,Q).

a_cote(X,Y,[X,Y|Q]).
a_cote(X,Y,[Y,X|Q]).
a_cote(X,Y,[T|Q]) :- a_cote(X,Y,Q).

contrainte1([X1,X2,X3,X4,X5,X6]) :- griffe(X2),griffe(X3).
contrainte2(L) :- a_cote(canard,chat,L).
contrainte3(L) :- entre(serpent,ver,pingouin,L).
contrainte4(L) :- entre(ver,pingouin,lion,L).

boite([X1,X2,X3,X4,X5,X6]) :-   generer([X1,X2,X3,X4,X5,X6]),
                                contrainte1([X1,X2,X3,X4,X5,X6]),
                                contrainte2([X1,X2,X3,X4,X5,X6]),
                                contrainte3([X1,X2,X3,X4,X5,X6]),
                                contrainte4([X1,X2,X3,X4,X5,X6]).


