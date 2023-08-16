
ocorrencia([X|[]], N,0):-
  X \==N,
  !.
ocorrencia([X|[]], X,1):-!.

ocorrencia([X|Tail], N, R):-
   X \== N,
   ocorrencia(Tail, N, R),
   !.

ocorrencia([N|Tail], N, R):-
   ocorrencia(Tail, N, T0),
   R is T0+1,
   !.

:- use_module(library(plunit)).

:- begin_tests(ocorrencia).

test(t1):- ocorrencia([1,1,2,2,2,3,1,1], 1, 4).
test(t2):- ocorrencia([1,1,2,2,2,3,1,1], 2, 3).
test(t3):- ocorrencia([1,1,2,2,2,3,1,1], 3, 1).

:- end_tests(ocorrencia).