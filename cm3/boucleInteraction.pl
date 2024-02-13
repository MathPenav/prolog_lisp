carre(0) :- ! , write(fin) , fail. 
carre(X) :- X2 is X*X , write(X2), nl.

traitement :- read_integer(X) , carre(X).

boucle :- traitement, !, boucle.
boucle.