mesmo_sinal(0,0):-
  !.

mesmo_sinal(A,B):-
  A >= 0,
  B >= 0,
  !.


mesmo_sinal(A,B):-
  A < 0,
  B < 0,
  !.

  :- use_module(library(plunit)).

  :- begin_tests(sinal).

    test(t1) :- mesmo_sinal(0, 0).
    test(t2) :- mesmo_sinal(2, 3).
    test(t3) :- mesmo_sinal(4, 2).
    test(t4) :- mesmo_sinal(5, 10).
    test(t5) :- mesmo_sinal(12, 11).
    test(t6) :- mesmo_sinal(23, 45).
    test(t7) :- mesmo_sinal(54, 32).
    test(t27) :- mesmo_sinal(0, 32).
    test(t37) :- mesmo_sinal(54, 0).
    test(t8, [fail]) :- mesmo_sinal(0, -10).
    test(t9, [fail]) :- mesmo_sinal(4, -10).
    test(t10, [fail]) :- mesmo_sinal(4, -10).
    test(t11, [fail]) :- mesmo_sinal(14, -1).
    test(t12, [fail]) :- mesmo_sinal(-4, 23).
    test(t13) :- mesmo_sinal(-4, -6).
    test(t14) :- mesmo_sinal(-40, -16).
    test(t15) :- mesmo_sinal(-432, -6332).
    test(t16) :- mesmo_sinal(-1, -64).
    test(t17) :- mesmo_sinal(-2, -8).

 :- end_tests(sinal).