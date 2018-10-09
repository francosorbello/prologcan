%CORREGIR
primo(1).
primo(X):-Div is X-1,foreach(between(2,Div,Y), (X mod Y) =\= 0).

mcd(X,0,X):-!.
mcd(X,Y,Rta):-Y>0, Resto is (X mod Y),mcd(Y,Resto,Rta).

%criba(X,Lista):-forall(between(2,X,Y),append(Lista,Y)).
factores(X,[Lista]):-foreach((between(2,X,Y),primo(Y )),write(Y)),append(Lista,Y).


