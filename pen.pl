pen([X, _], X):- !.

pen([_|Tail], R):-
 pen(Tail, T),
 R is T.

 :- use_module(library(plunit)).

 :- begin_tests(pen).

test(t1):- pen([1,2,3], 2).
test(t2):- pen([1,2,3,4], 3).
test(t3):- pen([1,2,3,1,2,3,1,2,3,1,2,3,1,2,3], 2).
test(t4):- pen([1,2], 1).
test(t5):- pen([1,2,35555555555,4], 35555555555).
test(t6, [fail]):- pen([1,2,3], 5).
test(t7, Q = 4):- pen([1,4,3], Q).


 :- end_tests(pen).