
parcial1(ana, 7).
parcial1(juan, 10).
parcial1(julio, 2).
parcial1(maria, 10).

parcial2(ana, 9).
parcial2(juan, 6).
parcial2(julio, 12).
parcial2(maria, 2).

promocionados(Alumno) :-
    parcial1(Alumno, Nota_Primer_Parcial),
    parcial2(Alumno, Nota_Segundo_Parcial),
    Nota_Final is (Nota_Primer_Parcial + Nota_Segundo_Parcial) / 2,
    Nota_Final >= 7.

promocionados_nota_final(Alumno, Nota_Final) :-
    parcial1(Alumno, Nota_Primer_Parcial),
    parcial2(Alumno, Nota_Segundo_Parcial),
    Nota_Final is (Nota_Primer_Parcial + Nota_Segundo_Parcial) / 2,
    Nota_Final >= 7.

recursan(Alumno) :-
    parcial1(Alumno, Nota_Primer_Parcial),
    parcial2(Alumno, Nota_Segundo_Parcial),
    Nota_Final is (Nota_Primer_Parcial + Nota_Segundo_Parcial) / 2,
    Nota_Final =< 3.

cursados(Alumno) :-
    parcial1(Alumno, Nota_Primer_Parcial),
    parcial2(Alumno, Nota_Segundo_Parcial),
    Nota_Final is (Nota_Primer_Parcial + Nota_Segundo_Parcial) / 2,
    Nota_Final >= 4,
    Nota_Final =< 6.

todas_notas_promocionadas_menos_maxima(X) :-
    promocionados_nota_final(_, X),
    promocionados_nota_final(_, Y),
    X < Y.

todas_notas_promocionadas_menos_minima(X) :-
    promocionados_nota_final(_, X),
    promocionados_nota_final(_, Y),
    X > Y.

maximos_promocionados(Alumno, Nota) :-
    promocionados_nota_final(Alumno, Nota),
    \+todas_notas_promocionadas_menos_maxima(Nota).