fat(0, 1):-!.
fat(1,1):-!.

fat(X,Y):-
  N is X-1,
  N >= 0,
 fat(N, Z),
 Y is X * Z.


:- use_module(library(plunit)).

:- begin_tests(fat).

test(t1) :- fat(1,1).
test(t2, [fail]) :- fat(1,2).
test(t3) :- fat(2,2).
test(t4) :- fat(3,6).
test(t5) :- fat(4,24).
test(t6) :- fat(5,120).
test(t7, [fail]) :- fat(0,0).

:- end_tests(fat).
