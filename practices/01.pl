
entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne("filete de cerdo").
carne("pollo asado").

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(vino).
bebida(cerveza).
bebida("agua mineral").

plato_principal(Plato) :- carne(Plato).
plato_principal(Plato) :- pescado(Plato).

menu(Entrada, Plato_Principal, Postre, Bebida) :-
    entrada(Entrada),
    plato_principal(Plato_Principal),
    postre(Postre),
    bebida(Bebida).

menu_con_consomé(Entrada, Plato_Principal, Postre) :-
    entrada(Entrada),
    plato_principal(Plato_Principal),
    postre(Postre),
    Entrada == consomé.

menu_sin_flan(Entrada, Plato_Principal, Postre) :-
    entrada(Entrada),
    plato_principal(Plato_Principal),
    postre(Postre),
    Postre \= flan.

menu_con_carne(Entrada, Plato_Principal, Postre) :-
    entrada(Entrada),
    plato_principal(Plato_Principal),
    carne(Plato_Principal),
    postre(Postre).