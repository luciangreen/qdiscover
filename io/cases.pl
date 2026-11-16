:- module(cases, [title/1, case/3]).
:- use_module('../prolog/qdiscover').
:- use_module(engine).
title('qdiscover').
gate_g(N, G) :- Top is N - 1, rnd_int(0, Top, T), rnd_int(1, Top, D), C is (T + D) mod N, rnd_pick([x(T), cnot(C, T), cnot(C, T)], G).
circ_g(N, Gs) :- rnd_int(0, 7, L), length(Gs, L), maplist(gate_g(N), Gs).
case(simplify, [C], simplify) :- rnd_int(2, 4, N), circ_g(N, C).
case(discover, [N, T], discover_count) :- rnd_int(2, 4, N), rnd_int(5, 25, T).
case(commute, [A, B], commute_bool) :- gate_g(3, A), gate_g(3, B).
discover_count(N, T, found(K)) :- discover(N, T, F), length(F, K).
commute_bool(A, B, X) :- ( commute(A, B) -> X = true ; X = false ).
