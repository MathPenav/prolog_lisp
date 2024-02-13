conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).