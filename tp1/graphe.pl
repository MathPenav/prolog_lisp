/* modélisation du graphe
   et exemple de commentaires sur plusieurs lignes */
arc(1,2).
arc(1,3).
arc(2,4).
arc(2,5).
arc(3,5).
arc(4,5).
arc(4,6).
arc(5,6).

chemin(D,A) :- arc(D,A). 
chemin(D,A) :- arc(D,X), chemin(X,A).


