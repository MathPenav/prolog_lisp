membre(X,[X|Q]).
membre(X,[Y|Q]) :- membre(X,Q).

inclus([],X).
inclus([Y|Q],X) :- membre(Y,X), inclus(Q,X).

enlever(X,[X|Q],Q).
enlever(X,[Y|Q],[Y|R]) :- enlever(X,Q,R).


/*egal_ens(X,Y) :- inclus(X,Y), inclus(Y,X).*/

egal_ens([],[]).
egal_ens([X|Q],Y) :- membre(X,Y), enlever(X,Y,R), egal_ens(Q,R).

intersection(X,Y,Z) :- membre(Z,X), membre(Z,Y).

disjoint(X,Y) :- \+(intersection(X,Y,Z)).
