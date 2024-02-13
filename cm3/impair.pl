impair([],[]).
impair([X,Y|Q], [X|R]) :- impair(Q,R).