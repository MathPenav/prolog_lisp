/*  
un bloc de commentaires sur
plusieurs lignes
*/

pere(joseph, john).
pere(joseph, robert).
pere(joseph, edward).
% + 7 autres enfants !

pere(john,john_john).
pere(john,caroline).
% + 2 autres enfants mort à la naissance

pere(robert, kathleen).
% + 10 autres enfants !

mere(rose, edward).
mere(rose, john).
mere(rose, robert).
mere(rose,rose_marie).
% + 6 autres enfants !

mere(jacqueline,caroline).
mere(jacqueline,john_john).
% 2 autres enfants mort à la naissance

ancetre(X,Y) :- pere(X,Y).
ancetre(X,Y) :- mere(X,Y).
ancetre(X,Y) :- pere(X,Z), ancetre(Z,Y).
ancetre(X,Y) :- mere(X,Z), ancetre(Z,Y).

question(R) :- findall(Y,ancetre(rose,Y),R).