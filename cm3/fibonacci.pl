fib(0,1) .
fib(1,1) .
fib(N,R) :- N=\=0, N=\=1, N1 is N-1, fib(N1,R1), N2 is N-2, fib(N2,R2), R is R1+R2.

% Avec conventions + - ? devant chaque argument
% argument 1 : +J = complementaire à N du rang i
% argument 2 : +Fi
% argument 3 : +Fi-1 (- sur le rang)
% argument 4 : -R(ésultat)
%
fib2(0,R,X,R) .
fib2(J, Fi, Fi_moins_1, R) :- J=\=0, Fi_plus_1 is Fi+Fi_moins_1, 
                                     J2 is J-1, 
									 fib2(J2, Fi_plus_1, Fi, R) .

% version avec un parametre supplementaire plus facile à comprendre
fib3(N,N,F_imoins2,F_imoins1,F_i) :- F_i is F_imoins1+F_imoins2.
fib3(N,I,F_imoins2,F_imoins1,F_n) :- I\=N, F_i is F_imoins1+F_imoins2, I2 is I+1, fib3(N,I2,F_imoins1,F_i,F_n).

fibRT(N,R) :- J is N-2, F2 is 2, F1 is 1, fib2(J,F2,F1,R).



