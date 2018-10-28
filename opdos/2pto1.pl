listavacia([Ca|_]):-Ca==[].
samelist(L1,L2):-L1==L2.

lastelem(L1,X):-length(L1,1),append(L1,[],X).
lastelem([_|Co],X):-lastelem(Co,X),!.

mostrarelem(L1,N,X):-buscando(L1,N,X,0).
buscando([Ca|_],N,X,P):-N==P,append([Ca],[],X),!.
buscando([_|Co],N,X,P):-P1 is P+1,buscando(Co,N,X,P1),!.

sumaelem([Ca|Co],X):-SP is Ca,sumando(Co,X,SP). %SP: Suma Parcial
sumando([],X,SP):-X is SP,!.
sumando([Ca|Co],X,SP):-SP1 is Ca+SP, sumando(Co,X,SP1),!.

incval([],_,NL):-append([],[],NL). 
incval([Ca|Co],VI,NL):-NCa is Ca+VI,incval(Co,VI,NL1),append([NCa],NL1,NL),!. %VI: Valor Incremento

elemmax([Ca|Co],X):-searchmax(Co,X,Ca),!.
searchmax([],X,M):-X is M,!.
searchmax([Ca|Co],X,M):-Ca>M,searchmax(Co,X,Ca).
searchmax([_|Co],X,M):-searchmax(Co,X,M).

delete1([],_,LN):-append([],[],LN).
delete1([Ca|Co],X,LN):-X==Ca,delete1(Co,X,LN),!.
delete1([Ca|Co],X,LN):-delete1(Co,X,LN1),append([Ca],LN1,LN).

listint(N,L):-lleno(N,L,0),!.
lleno(N,L,X):-N==X,append([],[],L).
lleno(N,L,X):-X1 is X+1,lleno(N,L1,X1),append([X1],L1,L).
