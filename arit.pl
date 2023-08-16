arit([_|[]]):-!.
arit([_,_|[]]):-!.

arit([L,R,S|Tail]):-
   R-L =:= S-R,
   arit([R,S|Tail]).


:- use_module(library(plunit)).

:- begin_tests(arit).

test(t1) :- arit([1,2,3,4,5]).
test(t2) :- arit([1,2]).
test(t3) :- arit([1,2,3,4,5,6,7,8]).
test(t4) :- arit([2,5,8,11,14]).
test(t5) :- arit([5,10,15,20,25]).
test(t6, [fail]) :- arit([1,2,3,42,5]).
test(t7, [fail]) :- arit([1,2,3,42,5]).
test(t8, [fail]) :- arit([1,2,3, 5,3]).
test(t9) :- arit([-1,-2,-3,-4,-5]).

:- end_tests(arit).