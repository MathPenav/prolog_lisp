enlever(X, [X|Q], Q ) .
enlever(X, [Y|Q], [Y|Q1] ) :- enlever(X, Q, Q1) .

permut([],[]).
permut(L,[X|L2]) :- enlever(X,L,L1), permut(L1,L2).

avant(X, Y, [X, Y|L]).
avant(X, Y, [X, Z |Q]) :- avant(X, Y, [X|Q]).
avant(X, Y, [Z|Q]) :- avant(X, Y, Q).

enigme(L) :- L = [[P1, N1, cricket], [P2, N2, S2], [P3, N3, S3]], 
             permut([michael, simon, richard], [P1,  P2, P3]),
             permut([israelien, australien, americain],[N1, N2, N3]), 
             permut([tennis, basket], [S2, S3]), 
             avant([michael, N4, basket], [P5, americain, S5], L),
             avant([simon, israelien, S6], [P7, N7, tennis], L).