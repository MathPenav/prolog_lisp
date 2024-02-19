enlever(X, [X|Q], Q ) .
enlever(X, [Y|Q], [Y|Q1] ) :- enlever(X, Q, Q1).

permut([],[]).
permut(L,[X|L2]) :- enlever(X,L,L1), permut(L1,L2).

compatibleIntuitif([],[],0):-!.
compatibleIntuitif([X|L1],[X|L2],N):-   !,compatibleIntuitif(L1,L2,N2), N is N2+1.
compatibleIntuitif([X|L1],[Y|L2],N):-   compatibleIntuitif(L1,L2,N).

compatible(P,[V,L]) :- compatibleIntuitif(P,L,V).

combien(P,V):-  write('Combien de place correctes pour '),
                write(P),
                write('?'),
                read_integer(V).

compatibleAvecHisto(P,[]).
compatibleAvecHisto(P,[H1|Q]) :- compatible(P,H1), compatibleAvecHisto(P,Q).

nouvelleProposistionCompatibleAvecHisto([[5,P]|H]):- !.
nouvelleProposistionCompatibleAvecHisto(H):-    permut([bleu,blanc,jaune,vert,rouge],P),compatibleAvecHisto(P,H), !,
                                                combien(P,V), nouvelleProposistionCompatibleAvecHisto([[V,P]|H]).

question:- nouvelleProposistionCompatibleAvecHisto([]).
