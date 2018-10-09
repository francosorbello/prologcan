progenitor(abel,cesar). %X es progenitor de Y
progenitor(abel,dario).
progenitor(flavia,cesar).
progenitor(flavia,dario).
progenitor(dario,hector).
progenitor(luisa,hector).
progenitor(dario,ines).
progenitor(luisa,ines).
progenitor(omar,maria).
progenitor(omar,victor).
progenitor(sara,victor).
%-%
mujer(flavia).
mujer(luisa).
mujer(maria).
mujer(ines).
mujer(maria).
mujer(sara).
hombre(abel).
hombre(dario).
hombre(omar).
hombre(cesar).
hombre(hector).
hombre(victor).
%-%
parejaCasada(abel, flavia). 
parejaCasada(flavia,abel).
parejaCasada(dario, luisa).
parejaCasada(luisa,dario).
parejaCasada(omar, sara).
parejaCasada(sara,omar).
parejaCasada(hector, maria).
parejaCasada(maria,hector).
%-%
suegra(X,Y):-mujer(X),progenitor(X,Z),parejaCasada(Z,Y).
suegro(X,Y):-hombre(X),progenitor(X,Z),parejaCasada(Z,Y).
padresPoliticos(F,M,Z):-suegra(F,Z),suegro(M,Z).
nuera(X,Y):-mujer(X),parejaCasada(X,Z),progenitor(Y,Z).
yerno(X,Y):-hombre(X),parejaCasada(X,Z),progenitor(Y,Z).
cuniado(X,Y):-hombre(X),padresPoliticos(F,M,Y),progenitor(F,X),progenitor(M,X).
cuniada(X,Y):-mujer(X),padresPoliticos(F,M,Y),progenitor(F,X),progenitor(M,X).
hermanosPoliticos(X,Y):-cuniado(X,Y);cuniada(X,Y).
%-%
padresDe(X,Y,Z):-progenitor(X,Z),progenitor(Y,Z).
tuvoHijos(X):-progenitor(X,_).
esMadre(X):-mujer(X),tuvoHijos(X).
hermanos(X,Y):- padresDe(P,M,X),padresDe(P,M,Y).
tio(X,Y):-hermanos(X,Z),progenitor(Z,Y).
abuelo(X,Y):-progenitor(X,Z),progenitor(Z,Y).
