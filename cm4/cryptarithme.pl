contraintesEquations([S,E, N, D, M, O, R, Y]) :- 
            Send #= 1000*S + 100*E + 10 *N + D , 
            More #= 1000*M + 100*O + 10*R + E, 
            Money #= 10000*M + 1000*O + 100*N + 10*E + Y, 
            Money #= Send + More.


cryptarithme(L) :- L = [S, E, N, D, M, O, R, Y],  fd_domain(L, 0, 9), 
            fd_all_different(L), contraintesEquations(L),
            fd_labeling(L).

