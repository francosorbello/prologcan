ultimoelem(L1,U):-append(_,U,L1),length(U, 1),!.
removelast([_], []):-!. 
removelast([Y|Ys], [Y|Zs]):-removelast(Ys, Zs).
rotacion(XY,YX):-ultimoelem(XY,U),removelast(XY,XYa),append(U,XYa,YX).
