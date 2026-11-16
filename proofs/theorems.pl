% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/qdiscover').

% Domain: every circuit of up to 4 gates from x and cnot on 3 wires.
gate3(G) :- between(0, 2, T), ( G = x(T) ; between(0, 2, C), C \== T, G = cnot(C, T) ).
circuit(Gs) :- between(0, 4, L), length(Gs, L), maplist(gate3, Gs).

% 1. Simplifying never changes what the circuit does.
theorem(simplify_is_sound) :- forall(circuit(C), ( simplify(C, S), equivalent(C, S, 3) )).

% 2. It never makes a circuit longer, and doing it again changes nothing.
theorem(simplify_shrinks_and_settles) :- forall(circuit(C), ( simplify(C, S), length(C, L1), length(S, L2), L2 =< L1, simplify(S, S2), S2 == S )).

% 3. Gates that commute really do: swapping them never changes the circuit.
theorem(commuting_gates_swap) :- forall(( gate3(A), gate3(B), commute(A, B) ), equivalent([A, B], [B, A], 3)).

% 4. Any gate twice in a row is the identity, and is removed.
theorem(pairs_cancel) :- forall(gate3(G), ( equivalent([G, G], [], 3), simplify([G, G], []) )).

% 5. Every circuit discover reports really shrank and is equivalent.
theorem(discoveries_are_real) :- forall(( member(N, [2, 3, 4]), discover(N, 30, F), member(found(C, D, L1, L2), F) ), ( L2 < L1, equivalent(C, D, N) )).
