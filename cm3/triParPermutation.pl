enlever(X, [X|Q], Q ) .
enlever(X, [Y|Q], [Y|Q1] ) :- enlever(X, Q, Q1) .

permut([],[]).
permut(L,[X|L2]) :- enlever(X,L,L1), permut(L1,L2).

croissant([]).
croissant([X]).
croissant([X,Y|Z]) :- X=<Y, croissant([Y|Z]).

triPermut(L,Lpermut) :- permut(L,Lpermut), croissant(Lpermut), ! .