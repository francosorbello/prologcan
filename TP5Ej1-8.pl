ama(juan,ana).
ama(laura,juan).
ama(ana,miguel).
ama(miguel,ana).
ama(luis,isabel).
ama(isabel,luis).
lovers(X,Y):- ama(X,Y),ama(Y,X).