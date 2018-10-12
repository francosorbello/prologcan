sameList(L1,L2):-L1=L2.
listaVacia(L1):-L1=[].
miembrode(L1,N):-member(N,L1).
concatenar(L1,L2,X):-append(L1,L2,X).
ultimoelem(L1,U):-append(U,_,L1),length(U, 1),!.
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