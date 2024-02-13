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

grand_mere(X,Y) :- mere(X,Z), mere(Z,Y).
grand_mere(X,Y) :- mere(X,Z), pere(Z,Y).

frere(X,Y) :- mere(W,X), mere(W,Y), pere(Z,X), pere(Z,Y).

demi_frere(X,Y) :- mere(W,X), mere(W,Y).
demi_frere(X,Y) :- pere(W,X), pere(W,Y).