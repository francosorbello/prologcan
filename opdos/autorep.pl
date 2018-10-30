auto_rep(L1,L2):-length(L1,X),repito(L1,X,L2),!.

repito(_,0,L2):-append([],[],L2).
repito(L1,X,L2):-X1 is X-1,repito(L1,X1,L2a),append([L1],L2a,L2),!.
