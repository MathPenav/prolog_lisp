voyage(1, 0).
voyage(2, 0).
voyage(1, 1).
voyage(0, 1).
voyage(0, 2).

etatInitial([3, 3, gauche]).
etatFinal([0, 0, droite]).

voyagePossible([M,C,gauche],[X,Y]) :- 