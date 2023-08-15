tamanho([], 0):- !.
tamanho([_], 1):- !.

tamanho([_| TAIL], N):-
  tamanho(TAIL, Y),
  N is Y+1.


:- use_module(library(plunit)).

:- begin_tests(tam).

test(t1):- tamanho([], 0).
test(t2):- tamanho([1], 1).
test(t3):- tamanho([2], 1).
test(t4):- tamanho([1,2], 2).
test(t5):- tamanho([1,2,3,4,5,6,7,83223,12], 9).
test(t6):- tamanho([1,2,3], 3).
test(t7):- tamanho([1,2,3,1,2,3,1,2,3,1,2,3], 12).
test(t8, [fail]):- tamanho([1,2,3], 4).
test(t9, [fail]):- tamanho([1,2,3,1], 12434).
test(t5):- tamanho([1,2,3,4,5,6,7,83223,12], 9).

:-end_tests(tam).