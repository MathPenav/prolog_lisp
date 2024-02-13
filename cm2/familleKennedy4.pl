mere(rose, john).
mere(rose, robert).
pere(john, caroline).

ancetre(X,Y) :- mere(X,Y).
ancetre(X,Y) :- pere(X,Y).
ancetre(X,Y) :- mere(X,Z), ancetre(Z,Y).
ancetre(X,Y) :- pere(X,Z), ancetre(Z,Y).
