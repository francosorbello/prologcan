%%hechos
animal(perro).
clase(mamifero,perro).
alimentacion(carnivoro,perro).
piel(pelo,perro).
extremidades(4,perro).
habitat(tierra,perro).
reprod(embarazo,perro).
color(marron,perro).
%%reglas
ungulado(X):-clase(mamifero,X), extremidades(4,X).
antilope(X):-cuernos(X),ungulado(X).
depredador(X):-alimentacion(carnivoro,X),