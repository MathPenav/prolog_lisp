couleur(bleu). 
couleur(blanc). 
couleur(rouge). 
couleur(vert).  

colorier(X1,X2,X3,X4,X5,X6) :-   couleur(X1), couleur(X2), couleur(X3),
								couleur(X4), couleur(X5), couleur(X6),  
								X1\=X2, X1\=X4, X1\=X5, 
								X2\=X3, X2\=X5, X2\=X6, 
								X3\=X6, 
								X4\=X5, 
								X5\=X6.
								
colorier2(L) :- L = [X1, X2, X3, X4, X5, X6], fd_domain(L, 1, 4) , 
              X1 #\= X2, X1 #\= X4, X1 #\= X5, 
			  X2 #\= X3, X2 #\= X5, X2 #\= X6,
              X3 #\= X6, 
			  X4 #\= X5, 
			  X5 #\= X6, 
			  fd_labeling(L).
