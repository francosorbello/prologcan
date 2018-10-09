

potencia(N,0,1):- A=\=0.
potencia(N,P,R):- P>0, X is P-1,potencia(N,X,R1), R is N*P1.
%%N=nro
%%P=potencia
%%R=resultado.
