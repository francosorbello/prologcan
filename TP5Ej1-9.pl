enfermo(juan,fiebre).%X persona Y sintoma
enfermedad(fiebre,jaqueca). %X es sintoma de Y
receta(ibuprofeno,jaqueca).%X resuelve Y
%cons_enf(X):- enfermo(Y,X). %X es la enfermedad a consultar

