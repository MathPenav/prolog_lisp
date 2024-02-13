nonUnifiable(X,X) :- !, fail.
nonUnifiable(X,Y).

min1(X,Y,X) :- X=<Y .
min1(X,Y,Y) :- X>Y .

min2(X,Y,X) :- X=<Y, ! .
min2(X,Y,Y) .
