passaro(tweety).
peixe(goldie).
minhoca(molie).
gato(silvester).

amigo(eu, silvester).

gosta(passaro, minhoca).
gosta(silvester, peixe).
gosta(silvester, passaro).
gosta(amigo, amigo).

% definicoes

come(Quem, OQue) :-
  gosta(Quem, OQue).

come(Quem, OQue) :-
  gosta(Quem, Tipo),
  call(Tipo, OQue).

come_tipo(Quem, Tipo, Instancia) :-
  gosta(Quem, Tipo),
  call(Tipo, Instancia).

% prints

imprime_tudo_que_silvester_come :-
  come_tipo(silvester, Tipo, X),
  write(Tipo), write(' ('), write(X), write(')'), nl,
  fail.
imprime_tudo_que_silvester_come.

% main

:- initialization(main).
main :- 
  write('Tudo o que Silvester come: '), nl,
  imprime_tudo_que_silvester_come,
  halt.
