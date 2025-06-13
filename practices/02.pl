
hombre(pedro).
hombre(manuel).
hombre(arturo).

mujer(maría).

padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría).

niño(X, Y) :- padre(Y, X).

hijo(X, Y) :-
    padre(Y, X),
    hombre(X).

hija(X, Y) :-
    padre(Y, X),
    mujer(X).

hermano-o-hermana(X, Y) :-
    padre(P, X),
    padre(P, Y),
    X \= Y.

hermano(X, Y) :-
    padre(P, X),
    padre(P, Y),
    hombre(X),
    X \= Y.

hermana(X, Y) :-
    padre(P, X),
    padre(P, Y),
    mujer(X),
    X \= Y.