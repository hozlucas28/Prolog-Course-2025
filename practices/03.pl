
transporte(roma, 20).
transporte(londres, 30).
transporte(tunez, 10).

alojamiento(roma, hotel, 50).
alojamiento(roma, hostal, 30).
alojamiento(roma, camping, 10).
alojamiento(londres, hotel, 60).
alojamiento(londres, hostal, 40).
alojamiento(londres, camping, 20).
alojamiento(tunez, hotel, 40).
alojamiento(tunez, hostal, 20).
alojamiento(tunez, camping, 5).

viaje(Ciudad, Semanas, Hospedaje, Precio_Total) :-
    transporte(Ciudad, Precio_Del_Transporte),
    alojamiento(Ciudad, Hospedaje, Precio_Por_Semana),
    Precio_Total is Precio_Del_Transporte + (Precio_Por_Semana * Semanas).

viajeeconomico(Ciudad, Semanas, Hospedaje, Precio_Maximo, Precio_Total) :-
    transporte(Ciudad, Precio_Del_Transporte),
    alojamiento(Ciudad, Hospedaje, Precio_Por_Semana),
    Precio_Total is Precio_Del_Transporte + (Precio_Por_Semana * Semanas),
    Precio_Total =< Precio_Maximo.