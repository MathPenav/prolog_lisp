inserer(X,[],[X]).
inserer(X,[Y|Q],[X,Y|Q]) :- X =< Y.
inserer(X,[Y|Q],[Y|S]) :- X > Y, inserer(X,Q,S).

/*Récursivité enveloppée*/
triParInsertion([],[]).  
triParInsertion([X|L],S) :- triParInsertion(L,S1), inserer(X,S1,S). 

/*Récursivité terminale*/
triParInsertion2([],C,C).
triParInsertion2([T|Q],C1,R):-inserer(T,C1,C2),triParInsertion2(Q,C2,R).

ajout(T,[],[[],T,[]]).
ajout(T,[G,N,D],[R,N,D]) :- T < N, ajout(T,G,R).
ajout(T,[G,N,D],[G,N,R]) :- T > N, ajout(T,D,R).

conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

aplatir([],[]) :- !.
aplatir([T|Q],R) :- !, aplatir(T,R1), aplatir(Q,R2), conc(R1,R2,R).
