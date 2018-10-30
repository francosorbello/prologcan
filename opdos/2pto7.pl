delete1([],_,LN):-append([],[],LN).
delete1([Ca|Co],X,LN):-X==Ca,delete1(Co,X,LN),!.
delete1([Ca|Co],X,LN):-delete1(Co,X,LN1),append([Ca],LN1,LN).

ocurrencias([],Y):-append([],[],Y).
ocurrencias([Ca|Co],Y):-buscando(Co,Ca,1,L1),
        delete1(Co,Ca,NCo),
        ocurrencias(NCo,Y1),
        append(Y1,[L1],Y).

buscando([],X,N,L):-append([X],[N],L).
buscando([Ca|Co],X,N,L):-Ca==X,N1 is N+1,buscando(Co,X,N1,L),!.
buscando([_|Co],X,N,L):-buscando(Co,X,N,L).