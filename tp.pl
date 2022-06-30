% TP: Muerte en la Mansion Dreadbury
% Tortolano Federico

viveEnMansion(agatha).
viveEnMansion(mayordomo).
viveEnMansion(charles).
viveEnMansion(milhouse).

odiaA(agatha, Persona) :-
    viveEnMansion(Persona),
    Persona \= mayordomo.

odiaA(mayordomo, Persona):-
    viveEnMansion(Persona),
    Persona \= mayordomo.

esMasRicoQue(Persona, agatha):-
    viveEnMansion(Persona),
    not(odiaA(mayordomo,Persona)).

odiaA(charles, Persona):-
    viveEnMansion(Persona),
    not(odiaA(agatha, Persona)).

quienMata(Persona, Victima):-
    odiaA(Persona, Victima),
    not(esMasRicoQue(Persona, Victima)),
    viveEnMansion(Persona).

/* Punto 1: consulta realizada y respuesta obtenida
?- quienMata(Persona, agatha).
Persona = agatha ;
false.

Punto 2: consultas realizadas y respuestas obtenidas
?- odiaA(_, milhouse).
true .

?- odiaA(charles, Persona).
Persona = mayordomo .

?- odiaA(Persona, agatha).
Persona = agatha ;
Persona = mayordomo ;
false.

?- odiaA(Odiador, Odiado). 
Odiador = Odiado, Odiado = agatha ;
Odiador = agatha, Odiado = charles ;
Odiador = agatha, Odiado = milhouse ;
Odiador = mayordomo, Odiado = agatha ;
Odiador = mayordomo, Odiado = charles ;
Odiador = mayordomo, Odiado = milhouse ;
Odiador = charles, Odiado = mayordomo ;
false.

?- odiaA(mayordomo,_).
true .
*/
