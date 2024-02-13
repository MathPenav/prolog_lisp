conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

reorganise([],P,[],[]) .
reorganise([X|Q],P,[X|L1],L2) :- X=<P, reorganise(Q, P, L1, L2) .
reorganise([X|Q],P,L1,[X|L2]) :- X>P , reorganise(Q, P, L1, L2) .

triRapide([],[]) .
triRapide([P|Q],R) :-   reorganise(Q, P, L1, L2),
						triRapide(L1,R1),
						triRapide(L2,R2),
						conc(R1,[P|R2],R).

