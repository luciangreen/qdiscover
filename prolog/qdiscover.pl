% qdiscover: search reversible circuits for shorter equivalents, the way iq simplifies quantum
% forms by cancelling parts. A circuit is simplified by two sound moves: a gate followed by the
% same gate cancels (every gate here is its own inverse), and gates on disjoint wires swap so
% that such pairs meet. discover/3 tries random circuits and keeps those that got shorter.
%?- simplify([cnot(0,1), x(2), cnot(0,1)], S).        % S = [x(2)]: the cnots cancel across x(2)
%?- simplify([x(0), cnot(0,1), x(0)], S).            % S unchanged: x(0) and cnot(0,1) share a wire
%?- discover(3, 20, Found).                           % circuits that shrank, with before and after sizes
:- module(qdiscover, [gate/3, run/3, bits/2, simplify/2, commute/2, equivalent/3, discover/3]).
:- use_module(library(lists)).
:- use_module(library(apply)).

flip(T, B0, B) :- nth0(T, B0, X), Y is 1 - X, length(Pre, T), append(Pre, [_|Post], B0), append(Pre, [Y|Post], B).
gate(x(T), B0, B) :- flip(T, B0, B).
gate(cnot(C, T), B0, B) :- ( nth0(C, B0, 1) -> flip(T, B0, B) ; B = B0 ).
gate(ccnot(C1, C2, T), B0, B) :- ( nth0(C1, B0, 1), nth0(C2, B0, 1) -> flip(T, B0, B) ; B = B0 ).
run(G, B0, B) :- foldl(gate, G, B0, B1), B = B1.
bits(N, B) :- length(B, N), maplist([X]>>member(X, [0, 1]), B).

wires(G, W) :- G =.. [_|W].
commute(A, B) :- wires(A, Wa), wires(B, Wb), \+ ( member(X, Wa), memberchk(X, Wb) ).

% simplify(+Circuit, -Shorter): cancel a gate with a later identical one when every gate between commutes with it; repeat.
simplify(C, S) :- ( cancel(C, C1) -> simplify(C1, S) ; S = C ).
cancel(C, C1) :- append(Pre, [G|Rest], C), append(Mid, [G2|Post], Rest), G2 == G, forall(member(M, Mid), commute(G, M)), !, append([Pre, Mid, Post], C1).

equivalent(A, B, N) :- forall(bits(N, X), ( run(A, X, Y), run(B, X, Y) )).

% discover(+N, +Tries, -Found): seeded random circuits of up to 6 gates on N wires; those that simplify.
discover(N, Tries, Found) :- numlist(1, Tries, Ss), foldl([S, A0, A]>>( circuit(N, S, C), simplify(C, D), length(C, L1), length(D, L2), ( L2 < L1 -> A = [found(C, D, L1, L2)|A0] ; A = A0 ) ), Ss, [], F0), reverse(F0, Found).
circuit(N, Seed, C) :- K is 2 + Seed mod 5, numlist(1, K, Is), maplist([I, G]>>( H is (Seed * 7919 + I * 104729) mod 1000003, T is H mod N, C1 is (T + 1 + (H // 7) mod (N - 1)) mod N, ( H mod 3 =:= 0 -> G = x(T) ; G = cnot(C1, T) ) ), Is, C).
