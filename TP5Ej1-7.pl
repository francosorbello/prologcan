papa(julian, juan).%julian es papa de juan
papa(juan, jose).
papa(juan, emiliano).
papa(jose, cristian).
papa(jose, javier).
esposa(ivonne, cristian).%ivonne es la esposa de cristian
mama(catalina, javier). %catalina es mama de javier
%reglas
hijo(A,B):-papa(B,A). %A es hijo de B
abuelo(A,B):-papa(A,C),papa(C,B). %A es abuelo de B
bisabuelo(A,B):-abuelo(A,C), papa(C,B).
hermano(A,B):-papa(C,A),papa(C,B), A\=B.
%%primo(A,B):-hermano(papa(C,A),papa(D,B)).
primo(A,B):-papa(C,A),papa(D,B),hermano(C,D).
tio(A,B):-papa(C,B),hermano(A,C).
cunado(A,B):-esposa(C,B),hermano(A,C).