ded_sig(D,M,Si):- M=3, D>20, D<32 , Si=aries ,!.
ded_sig(D,M,Si):- M=4, D>0, D<20, Si=aries, !.
%%
ded_sig(D,M,Si):- M=4, D>20, D<32 , Si=tauro ,!.
ded_sig(D,M,Si):- M=5, D>0, D<20, Si=tauro, !.
%%
ded_sig(D,M,Si):- M=5, D>20, D<31 , Si=geminis ,!.
ded_sig(D,M,Si):- M=6, D>0, D<20, Si=geminis, !.
%%
ded_sig(D,M,Si):- M=6, D>20, D<32 , Si=cancer ,!.
ded_sig(D,M,Si):- M=7, D>0, D<20, Si=cancer, !.
