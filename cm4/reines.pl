enlever(X, [X|Q], Q ) .
enlever(X, [Y|Q], [Y|Q1] ) :- enlever(X, Q, Q1) .

abs(X, Y) :- X < 0, Y is -1 * X.
abs(X, X) :- X >= 0.

noDiag([L1, C1], [L2, C2]) :- 	X1 is C1-C2, Y1 is L1-L2, 
 						        abs(X1, X2),  abs(Y1, Y2),  
 						        X2 =\= Y2.

compatible([L1, C1], []).
compatible([L1, C1], [[L2, C2]|Q]) :-  noDiag([L1, C1], [L2, C2]), 
 							           compatible([L1, C1], Q). 

reines([], [], R, R).
reines(Ldisponibles, [C1 | Crestants], Rplacees, R) :- 
 	                 enlever(L1, Ldisponibles, Lrestants),
 	                 compatible([L1, C1], Rplacees),
 	                 reines(Lrestants, Crestants, [[L1, C1]|Rplacees], R).

placerReines(R) :- reines([1,2,3,4], [1,2,3,4], [], R).