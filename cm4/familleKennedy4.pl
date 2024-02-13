/*  
un bloc de commentaires sur
plusieurs lignes
*/
:- dynamic( pere/2 ) .
:- dynamic( mere/2 ) .

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

si_X_nEtaitPasNe(X) :-  pere(Y,X), retract(pere(Y,X)), 
						mere(Z,X), retract(mere(Z,X)) .
/* et pas
si_X_nEtaitPasNe(X) :- pere(Y,X), retract(pere(Y,X)) .
si_X_nEtaitPasNe(X) :- mere(Z,X), retract(mere(Z,X)) .
car dans question2(R) le premier succès sur pere enchaîne sur grand_mere(rose,Y) qui fournit donc le même résultat qu'à la question1(R)
*/

question1(Y) :- grand_mere(rose,Y).
question2(Y) :- si_X_nEtaitPasNe(john), grand_mere(rose,Y).