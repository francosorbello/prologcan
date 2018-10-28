hola(1,2).
padre(juan).
%%comida(pan).

comida(X,Y,Z):=padre(X),padre(Y), padre(Z).

french(jean).
irish(jhon).
%ancestor(A,B).
likes(X,X).
comida(A,B,C).
comida(X,Y).

suma1(X,Y,Z):- Z is X+Y.
suma2(X,Y,Z):- Z=X+Y.
