/*  
un bloc de commentaires sur
plusieurs lignes
*/

pere(joseph, john).
pere(joseph, robert).
pere(joseph, edward).
% 7 autres enfants !

pere(john,john_john).
pere(john,caroline).
% 2 autres enfants mort à la naissance

pere(robert, kathleen).
% 10 autres enfants !

mere(rose, edward).
mere(rose, john).
mere(rose, robert).
mere(rose,rose_marie).
% 6 autres enfants !

mere(jacqueline,caroline).
mere(jacqueline,john_john).
% 2 autres enfants mort à la naissance

grand_mere(X,Y) :- mere(X,Z), mere(Z,Y).
grand_mere(X,Y) :- mere(X,Z), pere(Z,Y).

frere(X,Y) :- pere(Z,Y), pere(Z,X), X\=Y.
frere(X,Y) :- mere(Z,X), mere(Z,Y), X\=Y.

/*

homme(joseph).
homme(john).
homme(joseph).
homme(edward).
homme(john_john).
homme(robert).

femme(rose).
femme(jacqueline).
femme(caroline).

demi_frere(X,Y) :- homme(X), pere(Z1,X), pere(Z1,Y).
demi_frere(X,Y) :- homme(X), mere(Z2,X), mere(Z2,Y).

frere(X,Y) :- homme(X), pere(Z1,X), pere(Z1,Y), mere(Z2,X), mere(Z2,Y). 

oncle(X,Y) :- frere(X,Z), pere(Z,Y).
oncle(X,Y) :- frere(X,Z), mere(Z,Y).
*/
