homem(abraham).
homem(clancy).
homem(herb).
homem(homer).
homem(paiLing).
homem(bart).

mulher(maeHerb).
mulher(mona).
mulher(jackie).
mulher(marge).
mulher(patty).
mulher(selma).
mulher(lisa).
mulher(maggie).
mulher(ling).

pai(abraham, herb).
pai(abraham, homer).
pai(clancy, marge).
pai(clancy, patty).
pai(clancy, selma).
pai(homer, bart).
pai(homer, lisa).
pai(homer, maggie).
pai(paiLing, ling).

mae(maeHerb, herb).
mae(mona, homer).
mae(jackie, marge).
mae(jackie, patty).
mae(jackie, selma).
mae(marge, bart).
mae(marge, lisa).
mae(marge, maggie).
mae(selma, ling).

casado(abraham, mona).
casado(clancy, jackie).
casado(homer, marge).
casado(selma, paiLing).

% definicoes

filho(PaiMae, Filho) :-
  pai(PaiMae, Filho); mae(PaiMae, Filho).

irmao(X, Y) :-
  pai(Pai, X),
  pai(Pai, Y),
  X \= Y.
  
tio_paterno(Tio, X) :-
  pai(Pai, X),
  irmao(Tio, Pai).

tio_materno(Tio, X) :-
  mae(Mae, X),
  irmao(Tio, Mae).
  
tio(T, X) :-
  tio_paterno(T, X);
  tio_materno(T, X).
  
tio_casado_com_parente(Tio, X) :-
  tio(Tio, X),
  casado(Tio, Conjuge),
  (
    filho(Conjuge, X);
    filho(X, Conjuge);
    irmao(Conjuge, X);
    tio_paterno(Conjuge, X);
    tio_materno(Conjuge, X);
    primos_tio_paterno(Conjuge, X);
    primos_tio_materno(Conjuge, X)
  ).
  
primos_tio_paterno(Primo, X) :-
  tio_paterno(Tio, X),
  filho(Tio, Primo).
  
primos_tio_materno(Primo, X) :-
  tio_materno(Tio, X),
  filho(Tio, Primo).
  
% prints
  
imprime_mulheres :-
  mulher(X),
  write(X), nl,
  fail.
imprime_mulheres.
  
imprime_tios_bart_pai :-
  tio_paterno(X, bart),
  write(X), nl,
  fail.
imprime_tios_bart_pai.

imprime_tios_bart_mae :-
  tio_materno(X, bart),
  write(X), nl,
  fail.
imprime_tios_bart_mae.

imprime_tios_casados_parentes_bart :-
  ( tio_casado_com_parente(X, bart)
  -> ( write(X), nl, fail )
  ; write('Nenhum(a) tio(a) casado(a) com parente encontrado.'), nl
  ).
imprime_tios_casados_parentes_bart.

imprime_primos_bart_pai :-
    ( primos_tio_paterno(X, bart)
    ->  ( write(X), nl, fail )
    ; write('Nenhum(a) primo(a) encontrado.'), nl
    ).
imprime_primos_bart_pai.

imprime_primos_bart_mae :-
  ( primos_tio_materno(X, bart)
  -> ( write(X), nl, fail )
  ; write('Nenhum(a) primo(a) encontrado.'), nl
  ).
imprime_primos_bart_mae.

% main

:- initialization(main).
main :-
    write('--- a) Quem sao as mulheres da familia? '), nl,
    imprime_mulheres, nl,
    write('--- b) Quem sao os tios e tias do Bart por parte de mae?'), nl,
    imprime_tios_bart_pai, nl,
    write('--- c) Quem sao os tios e tias do Bart por parte de pai?'), nl,
    imprime_tios_bart_mae, nl,
    write('--- d) Quem sao os tios e tias do Bart que se casaram com parentes seus?'), nl,
    imprime_tios_casados_parentes_bart, nl,
    write('--- e) Quem sao os primos e primas do Bart por parte de pai: '), nl,
    imprime_primos_bart_pai, nl,
    write('--- f) Quem sao os primos e primas do Bart por parte de mae: '), nl,
    imprime_primos_bart_mae, nl,
    halt.
