/*
  ████████╗███████╗███████╗████████╗███████╗
  ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝
     ██║   █████╗  ███████╗   ██║   ███████╗
     ██║   ██╔══╝  ╚════██║   ██║   ╚════██║
     ██║   ███████╗███████║   ██║   ███████║
     ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝                                                          
*/


:- include(notas).

:-begin_tests(notas).

test("Promedio de una persona", nondet):-
    promedio(dauria, 9),    % 2 notas
    promedio(goffredo, 7),  % 3 notas, ya es medio redundante
    promedio(vera, 9).      % una sola nota, de desconfiado

test("Cuántos rindieron PDP"):-cuantosRindieronPiola(pdp, 8).

test("Cuántos aprobaron PDP"):-cuantosAprobaronPiola(pdp, 6).

test("Medallas de honor", set(Persona = [vera, dauria, bardelli, margiotta])):-medallaDeHonor(Persona).

test("Materias amenas", set(Materia = [pdp])):-materiaAmena(Materia).

test("Materias heavies", set(Materia = [discreta])):-materiaHeavy(Materia).

test("Quiénes promocionan alguna - con set"):-quienesPromocionanAlguna([bardelli, dauria, goffredo, margiotta, vera]).

test("Quiénes promocionan alguna - con bag", nondet):-
    quienesPromocionanAlguna2(Personas), 
    member(bardelli, Personas),
    member(dauria, Personas),
    member(goffredo, Personas),
    member(margiotta, Personas),
    member(vera, Personas).

:-end_tests(notas).
