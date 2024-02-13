/*  
un bloc de commentaires sur
plusieurs lignes
*/
:- dynamic( pere/2 ).


non(P) :- P, !, fail .
non(P) :- P=P .

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

epoux(X,Y) :- pere(X,Z), mere(Y,Z).

complete_pere_par_mere :- 	epoux(X,Y), mere(Y,Z), 
							non(pere(X,Z)), 
							assertz(pere(X,Z)).