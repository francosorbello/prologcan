hola(1,2).
padre(juan).
%%comida(pan).

comida(X,Y,Z):=padre(X),padre(Y), padre(Z).