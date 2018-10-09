musica(X):-contento(X).
musica(X):-radio(X).
toca_guit(X):-musica(X),guitarra(X).
guitarra(juan).
guitarra(ana).
contento(juan).
radio(ana).