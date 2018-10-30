fact(X,Y):-X==1, Y is X.
fact(X,Y):-X1 is X-1,fact(X1,Y1),Y is Y1*X,!.

my_permutation(Bs, [A|As]):- append(Xs, [A|Ys], Bs), 
    append(Xs, Ys, Zs), 
    my_permutation(Zs, As). 
my_permutation([], []).

%obtengolist me da una parte de la lista desde 1 hasta N
obtengolist(_,0,Xn):-append([],[],Xn).
obtengolist([Ca|Co],N,Xn):-N1 is N-1,obtengolist(Co,N1,Xn1),append([Ca],Xn1,Xn),!.
%combinacion(X,N,Y):-obtengolist(X,N,L1).

comb(0,_,[]).
comb(N,[X|T],[X|Comb]) :- N > 0, N1 is N - 1, comb(N1,T,Comb).
comb(N,[_|T],Comb) :- N > 0, comb(N,T,Comb).

