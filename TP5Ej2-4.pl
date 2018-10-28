minimo([],_):-!.
minimo([Ca|Co],X):-minimo1(Co,Ca,X). 
minimo1([],_,_):-!.
minimo1([Ca|Co],X,Y):-length(Ca, U1), %X es el minimo con el que comparo
        length(X,U2),
        U1<U2,minimo1(Co,Ca,Y),!.
minimo1([_|Co],X,Y):-minimo1(Co,X,Y),!.

%IDEA: busco el minimo de la lista y lo añado a una lista nueva. Repito hasta quedarme sin elementos
%en la lista de entrada.
listsort([],_).
listsort(L1,L2):-minimo(L1,X),
            write("X:"),writeln(X),
            append(L2,X,L3),
            delete(L1,X,L1a),
            write("L1a:"),writeln(L1a),listsort(L1a,L3).