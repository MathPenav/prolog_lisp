/* passage par des prédicats définis car write(X) 
ne peut contenir de \ à l'intérieur d'une chaîne de car X
(car \ est interprété comme caractère d'échappement)
*/

% différence classique (sur la valeur) entre expressions => impose les expressions evaluables et s'il y a donc des variables, qu'elles soient liées
diff1(X,Y) :- X=\=Y.
question1 :- write('RAS sur difference entre expressions avec diff1(1,5)'), diff1(1,5) .
question2 :- write('R instancie a 2 avec R=2 puis succes sur difference entre expressions avec diff1(1,R) car R lie a une valeur differente de 1'), 
             R=2, diff1(1,R).
question3 :- write('exception sur diff1(1,R) avec R libre car l expression R n est pas evaluable'), 
             diff1(1,R).

% différence classique (sur la valeur) entre termes ->  accepte des variables libres mais échoue systematiquement 
% explication : si la variable libre étaient ensuite liée à la valeur correspondant à l'autre operande, la contrainte ne serait plus satisfaite
diff2(X,Y) :- X\=Y.
question4 :- write('RAS sur difference entre termes avec diff2(1,5)'), 
             diff2(1,5) .
question5 :- write('ici echec et non exception sur differences entre termes avec diff2(1,R) car R libre et pourrait donc valoir 1 ensuite'), 
             diff2(1,R).

% difference syntaxique \==, test direct
question6 :- write('succes car 2 operandes syntaxiquement differents'), X\==Y.
question7 :- write('echec car 2 operandes syntaxiquement identiques'), X\==X.

% difference syntaxique \==, test indirect via l'unification
diff3(X,Y) :- X\==Y, var(X), var(Y).    % les deux var s'assurent que X et Y sont bien libres
question8 :- write('plus interessant, il est devient possible de tester que les parametres de diff3(X,Y) sont independants et libres -> succes avec diff3(R1,R2)'),
             diff3(R1,R2).
question9 :- write('meme condition testee qu a la question 8 -> echec avec diff3(R,R) car les deux parametres ne sont pas independants'), 
             diff3(R,R).