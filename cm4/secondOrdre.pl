conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

membre(X,[X|Q] ) :- !.
membre(X,[Y|Q] ) :- membre(X,Q) .

inverse([],[]).
inverse([X|Q],R) :- inverse(Q,QL), conc(QL,[X],R).


arc(a,b).
arc(a,c).
arc(b,e).
arc(b,d).
arc(c,d).
arc(e,f).
arc(d,f).

filsNonObserves(X, Y, Explores, Q):- arc(X, Y) , \+(membre(Y, Explores)), \+(membre(Y, Q)).

parcoursLargeur([], Explores, R):- inverse(Explores, R).
parcoursLargeur([X|Q], Explores, R):- findall(Y, filsNonObserves(X, Y, Explores, Q), Fils) ,
			                          conc(Q, Fils, L), 
									  parcoursLargeur(L, [X|Explores], R).

question(R) :- parcoursLargeur([a],[],R).

