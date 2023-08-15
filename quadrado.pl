quadrado(X, Y):-
 Y is X*X.

 :- use_module(library(plunit)).

 :- begin_tests(quadrado).

 test(q1) :- quadrado(0,0).
 test(q2) :- quadrado(4,16).
 test(q3, Q = 1) :- quadrado(-1,Q).
 test(q4, Q = 1) :- quadrado(1,Q).
 test(q4, Q = 64) :- quadrado(8,Q).
 test(q4 , [fail]) :- quadrado(8,12).
 test(q4, [fail]) :- quadrado(2,5).

 :- end_tests(quadrado).