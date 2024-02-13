conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

inverse([],[]).
inverse([X|Q],R) :- inverse(Q,QL), conc(QL,[X],R).

inverse2([],A,A).
inverse2([X|Q],A,R) :- inverse2(Q,[X|A],R).

