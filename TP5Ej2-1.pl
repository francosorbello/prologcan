sameList(L1,L2):-L1=L2.
listaVacia(L1):-L1=[].
miembrode(L1,N):-member(N,L1).
concatenar(L1,L2,X):-append(L1,L2,X).
ultimoelem(L1,U):-append(_,U,L1),length(U, 1),!.
longitud([],0).
longitud([_|Co],N):-longitud(Co,N1),N is N1+1.
elemini([Ca|Co],Elem,NewL):-append([Ca],Co,X),NewL=[Elem|X].
elemfin(L1,Elem,NewL):-append(L1,Elem,NewL).
%-%
printlist([]).
printlist([Ca|Co]):-writeln(Ca),printlist(Co).
%-%
printelem([Ca|Co],I):- longitud([Ca|Co],X),I=<X,printelem([Ca|Co],I,0),!.
printelem([Ca|Co],I,N):-N1 is N+1,printelem(Co,I,N1),writeln(Ca),!.
printelem(_,I,I):-!.
%-%
/*sumaelem([Ca|Co]):-sumaelem(Co,Ca).
sumaelem([Ca|Co],Sum):-Sum1 is (Sum+Ca),sumaelem(Co,Sum1).
sumaelem([],X):-writeln(X),!. */
sumaelem([Ca|Co],Sum):-Sum is Ca,sumaelem(Co,Sum),!.
sumaelem([Ca|Co],Sum):-Sum1 is (Sum+Ca),sumaelem(Co,Sum1).
sumaelem([],_):-!.


busconro([]):-false,!.
busconro([Ca|_]):-integer(Ca),!.
busconro([_|Co]):-busconro(Co).
%-%
/*incrementar([]).
incrementar([Ca|Co]):-busconro(Ca),Ca is Ca+1,incrementar([Ca|Co]).
incrementar()*/

%-%
maximo([],_):-!.
maximo([Ca|Co],_):-maximo1(Co,Ca).
maximo1([],X):-write(X),!.
maximo1([Ca|Co],X):-Ca>X,maximo1(Co,Ca),!.
maximo1([_|Co],X):-maximo1(Co,X),!.
%-%
minimo([],_):-!.
minimo([Ca|Co],_):-minimo1(Co,Ca).
minimo1([],X):-write(X),!.
minimo1([Ca|Co],X):-Ca<X,minimo1(Co,Ca),!.
minimo1([_|Co],X):-minimo1(Co,X),!.
%-%
reverso([],[]).
reverso([Ca|Co],LR):-reverso(Co,LR1),append(LR1,[Ca],LR).
palindrome(L1):-reverso(L1,L2),L1==L2.
%-% la idea es copiar L1 en NewL excepto el valor que quiero eliminaraux
eliminar(L1,X,_):-eliminaraux(L1,X,[]).
eliminaraux([],_,_).
eliminaraux([Ca|Co],X,NewL):-Ca==X,eliminaraux(Co,X,NewL).
eliminaraux([Ca|Co],X,NewL):-append(NewL,[Ca],L2),writeln(L2),eliminaraux(Co,X,L2),!.
%-%
listarango(I,F,L):-L1=[],foreach(between(I,F,X), append(L1,[X],L)).
