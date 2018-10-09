libro(123,harry_potter,autor(rowling,jk)).
miembroLiberia(666,nombre(sorbelo,franco),casa).
prestamo(123,666,fecha(4,10,18),fecha(10,10,18)).
libroPrestado(Ap,Tit,NroCat):-miembroLiberia(_,nombre(Ap,_),_),libro(NroCat,Tit,autor(_,_)).
atrasados(fecha(D1,M1,A1),fecha(D2,M2,A2)):-A2<A1;M2<M1;D2<D1.
