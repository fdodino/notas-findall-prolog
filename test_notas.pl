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

test("Cuántos rindieron PDP", set(Cuantos=[8])):-cuantosRindieronPiola(pdp, Cuantos).

test("Cuántos aprobaron PDP", set(Cuantos=[6])):-cuantosAprobaronPiola(pdp, Cuantos).

:-end_tests(notas).
