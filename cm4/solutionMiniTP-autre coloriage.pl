/* codage des couleurs dans le respect de l'ordre alphabétique
   b <-> 1
   r <-> 2
   v <-> 3
*/
coloriage(L) :- L = [X1, X2, X3, X4], fd_domain(L, 1, 3) , 
              X1 #\= 1, X2 #\= 2, X3 #\= 2, 
			  X1 #\= X4, X1 #\= X3, X1 #\= X2,
              X2 #\= X3, 
			  X3 #\= X4, 
			  fd_labeling(L).
