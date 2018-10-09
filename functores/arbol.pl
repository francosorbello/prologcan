padre(a,b).
padre(b,c).
padre(c,e).
padre(a,d).
abuelo(U,V):-padre(U,W),padre(W,V).
ancestro(X,Y):-padre(X,Y).
ancestro(X,Y):-padre(X,Z),ancestro(Z,Y).

ancestro(a,Y).
