fact(0,A,A).
fact(N,A,R) :- N2 is N-1, A2 is A*N, fact(N2,A2,R).


