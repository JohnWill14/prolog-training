maior([L,T|Tail], R):-
  maximo(L, T, S),
  maior(Tail, T1),
  maximo(S,T1, R),
  !.

maior([L,T], R):-
  maximo(L, T, R),
  !.

maior([L|[]], L):- !.


  maximo(S,T1, R):-
   S >=T1,
   R is S,
   !.

  maximo(S,T1, R):-
   T1 > S,
   R is T1,
   !.

:- use_module(library(plunit)).

:- begin_tests(maior).

test(t1) :- maior([1,2,3],3).
test(t2) :- maior([1,2,3,4,0],4).
test(t3) :- maior([1,2,5,3,4,0],5).
test(t4, [fail]) :- maior([1,2,5,3,4,0],3).
test(t5, [fail]) :- maior([1,2,3],1).

:- end_tests(maior).