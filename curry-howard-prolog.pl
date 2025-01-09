% Type declarations
nat_type(N) :- integer(N), N >= 0.

% Two proofs/implementations of nat -> nat -> nat
plus_proof(X, Y, Result) :-
    nat_type(X),
    nat_type(Y),
    Result is X + Y.

mult_proof(X, Y, Result) :-
    nat_type(X),
    nat_type(Y),
    Result is X * Y.

% Test queries
:- plus_proof(3, 4, Z), write('3 + 4 = '), writeln(Z).
:- mult_proof(3, 4, Z), write('3 * 4 = '), writeln(Z).
