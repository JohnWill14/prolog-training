kes([N | _], 0, N):- !.

kes([_|Tail], K, N):-
  Y is K-1,
  kes(Tail, Y, N).


:- use_module(library(plunit)).

:- begin_tests(k).

test(t1):- kes([1,2,3], 0, 1).
test(t2):- kes([1,2,3], 1, 2).
test(t3):- kes([1,2,3], 2, 3).
test(t4):- kes([5, 3, 10], 1, 3).
test(t5):- kes([5, 3, 10], 0, 5).
test(t6, [fail]):- kes([5, 3, 10], 4, 3).
test(t7, [fail]):- kes([5, 3, 10], 4, 3).
test(t8, [fail]):- kes([5, 3, 10, 11], 4, 12).
test(t9):- kes([5, 3, 10, 11], 3, 11).
test(t10, [fail]):- kes([5, 3, 10, 11], 0, 12).
:- end_tests(k).