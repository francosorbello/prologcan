ultimoelem(L1,U):-append(_,U,L1),length(U, 1),!.
removelast([_], []):-!. 
removelast([Y|Ys], [Y|Zs]):-removelast(Ys, Zs).
rotacion(XY,YX):-ultimoelem(XY,U),removelast(XY,XYa),append(U,XYa,YX).

multirot(L1,L2):- length(L1,X), listarot(L1,X,LR),buscando(LR,L2,X),!.
buscando(_,[],_).
buscando(LR,L2,X):-partolist(L2,X,L2a,L2C),member(L2a, LR), buscando(LR,L2C,X).
%partolist toma los primeros X elementos de la lista y devuelve esa lista
%mas la lista grande sin esos elementos
partolist(L,0,La,LC):-append(L,[],LC),append([],[],La).
partolist([Ca|Co],X,La,LC):- X1 is X-1,partolist(Co,X1,Lac,LC),append([Ca],Lac,La),!.
%listarot genera una lista con todas las rotaciones de l1 posibles
listarot(_,0,LN):-append([],[],LN).
listarot(L1,X,LN):- rotacion(L1,LR), X1 is X-1,listarot(LR,X1,LN1),append([LR],LN1,LN),!.