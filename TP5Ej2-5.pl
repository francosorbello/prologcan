es_telescopio(N,Xs):-telescopio1(N,Xs,N). 
telescopio1(_,_,0):-!. %si encuentro N cant de N(ej: cinco cincos), termino.
telescopio1(_,[],X):-X\=0,fail. %si llego al final de la lista y N apareció mas/menos de N veces retorno false.
telescopio1(N1,[Ca|Co],N2):-Ca==N1,N3 is N2-1,telescopio1(N1,Co,N3). %N2 cuenta la cant de N que encuentro
telescopio1(N1,[_|Co],N2):-telescopio1(N1,Co,N2).

