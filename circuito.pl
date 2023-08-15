and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

not(0,1).
not(1,0).

nand(X,Y,Z):-
   and(X, Y, W),
   not(W,Z).

circuito(A, B, C, D):-
    nand(A,B,X),
    or(B, C, Y),
    and(X, Y, D),
    !.


:- use_module(library(plunit)).

:- begin_tests(circuito).

test(t1) :- circuito(0,0,0,0).
test(t2) :- circuito(1,0,0,0).
test(t3) :- circuito(0,1,0,1).
test(t4) :- circuito(0,1,1,1).
test(t5) :- circuito(1,1,1,0).

:- end_tests(circuito).