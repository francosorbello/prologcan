son_consecutivas(N,L):-consecutivas(N,L,N).
consecutivas(N,[Ca|Co],M):-Ca==N,M2 is M-1,compruebo(N,Co,M2),!.
consecutivas(N,[_|Co],M):-consecutivas(N,Co,M).
compruebo(_,_,0):-!.
compruebo(_,[],M):-M\=0,fail.
compruebo(N,[Ca|Co],M):-Ca==N,M2 is M-1,compruebo(N,Co,M2).
compruebo(N,[Ca|_],_):-Ca\=N,fail.