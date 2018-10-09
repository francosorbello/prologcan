vence(luis,diego).
vence(ana,luis).
vence(ana,diego).
/*ganador(X):- vence(X,_),not(vence(_,X)).
perdedor(X):-vence(_,X),not(vence(X,_)).
luchador(X):-vence(X,_);vence(_,X).*/

ganador(X):- not(vence(_,X)),!.
perdedor(X):-not(vence(X,_)),!.
luchador(X):-vence(X,_);vence(_,X).
