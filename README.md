# qdiscover

search reversible circuits for shorter equivalents, the way iq simplifies quantum forms by cancelling parts. A circuit is simplified by two sound moves: a gate followed by the same gate cancels (every gate here is its own inverse), and gates on disjoint wires swap so that such pairs meet. discover/3 tries random circuits and keeps those that got shorter.

## Use

```prolog
?- use_module(prolog/qdiscover).
?- simplify([cnot(0,1), x(2), cnot(0,1)], S).        % S = [x(2)]: the cnots cancel across x(2)
?- simplify([x(0), cnot(0,1), x(0)], S).            % S unchanged: x(0) and cnot(0,1) share a wire
?- discover(3, 20, Found).                           % circuits that shrank, with before and after sizes
```

## Proofs

`proofs/theorems.pl` proves 5 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every circuit of up to 4 gates from x and cnot on 3 wires.

1. Simplifying never changes what the circuit does.
2. It never makes a circuit longer, and doing it again changes nothing.
3. Gates that commute really do: swapping them never changes the circuit.
4. Any gate twice in a row is the identity, and is removed.
5. Every circuit discover reports really shrank and is equivalent.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
