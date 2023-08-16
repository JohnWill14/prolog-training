cre([_|[]]):- !.

cre([X,Y]):-
  X =< Y,
  !.

cre([X,Y|Tail]):-
  X =< Y,
  cre([Y|Tail]).


:- use_module(library(plunit)).

:-begin_tests(cre).

test(t1):-cre([1,2,3]).
test(t2):-cre([1]).
test(t3):-cre([0,1]).
test(t4,[fail]):-cre([1,44,3]).
test(t5):-cre([1,44]).
test(t6, [fail]):-cre([1,0]).
test(t7, [fail]):-cre([65,1,44]).
:-end_tests(cre).