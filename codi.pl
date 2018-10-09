cancion(0):- write("Codi duerme en el mueble"),nl.
cancion(X):- write("Codi toma otra botella"),nl,Y is (X-1),cancion(Y).
