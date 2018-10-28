ultimoelem(L1,U):-append(_,U,L1),length(U, 1),!.
removelast([_], []):-!. 
removelast([Y|Ys], [Y|Zs]):-removelast(Ys, Zs).
rotacion(XY,YX):-ultimoelem(XY,U),removelast(XY,XYa),append(U,XYa,YX).
%para comprobar hago: [a,b,c]=[a,b,c]->[b,c]=[b,c] etc hasta vaciar.Si es V roto L1 y repito
%hasta quedarme sin elementos en la lista L2. Si es F termino.

%prueba(L1,L2):-compruebo(L1,L2,L3),write("L3:"),write(L3).
multirot(_,[]):-!.
multirot(L1,L2):-compruebo(L1,L2,L3),rotacion(L1,LR),multirot(LR,L3).
compruebo([],L1,L2):-append(L1,[],L2),!.
compruebo([X|Xs],[Y|Ys],List2):-X==Y,compruebo(Xs,Ys,List2).
compruebo([X|_],[Y|_]):-X\=Y,!.