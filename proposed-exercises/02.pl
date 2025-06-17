ave(a).
ave(b).
ave(c).
ave(d).
% ave(e).

culpable(a).

vio(a, b).
vio(a, c).

vio(b, a).
vio(b, c).

vio(c, a).
vio(c, b).

vio(d, a).
vio(d, b).
vio(d, c).

% vio(e, a).

facilitadores(X) :-
    vio(X, Y),
    culpable(Y),
    \+ culpable(X),
    \+ vio(_, X).

multiples_facilitadores(X) :-
    facilitadores(Y),
    X \== Y.

facilitador(X) :-
    facilitadores(X),
    \+ multiples_facilitadores(X).