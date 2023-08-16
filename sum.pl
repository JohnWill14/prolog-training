

sum([X], [Y], R):-
 S is X+Y,
 R = [S],
 !.

sum([X|T0], [Y|T1], R):-
 S is X+Y,
 sum(T0, T1, S2),
 R = [S | S2].


:- use_module(library(plunit)).

:- begin_tests(sum).

test(t1) :- sum([1], [1], [2]).
test(t2) :- sum([1,2], [1,2], [2,4]).
test(t3) :- sum([1,2,3,4,5,6,7,8], [1,2,3,4,5,6,7,8], [2,4,6,8,10,12,14,16]).
test(t4, [fail]) :- sum([1], [1], [3]).

:- end_tests(sum).