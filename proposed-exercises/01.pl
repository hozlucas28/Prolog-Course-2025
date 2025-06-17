ave(a).
ave(b).
ave(c).
ave(d).
% ave(e).

culpable(a).

vio(a, b).
vio(a, c).

vio(b, c).

vio(c, b).

vio(d, a).
vio(d, b).
vio(d, c).

% vio(e, a).

testigo_silenciosos(X) :-
    vio(X, Y),
    \+ vio(_, X),
    culpable(Y).

multiples_testigos_silenciosos(X):-
    testigo_silenciosos(Y),
    X \== Y.

testigo_silencioso_unico(X) :-
    testigo_silenciosos(X),
    \+ multiples_testigos_silenciosos(X).