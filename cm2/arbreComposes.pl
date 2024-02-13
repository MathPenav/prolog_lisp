possede(jean,animal(chat)).
possede(jean,animal(chien)).
possede(jean,livre(critiqueDeLaRaisonPure,auteur(emmanuel,kant))).
possede(jean,livre(lesRobots, auteur(isaac, asimov))).
possede(jean, voiture(electrique)).

aimeAnimal(X,Y) :- possede(X,animal(Y)).
aimeAuteur(X,Y) :- possede(X,livre(W,auteur(U,Y))).