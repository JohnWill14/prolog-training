fib(0, 1):-!.
fib(1,1):-!.

fib(X,Y):-
  X2 is X-1,
  X3 is X-2,
  X2 >= 0,
  X3 >= 0,
  fib(X2, Z),
  fib(X3, W),
  Y is W + Z.

:- use_module(library(plunit)).

:- begin_tests(fib).

test(t1):- fib(0, 1).
test(t2):- fib(1, 1).
test(t3):- fib(2, 2).
test(t4):- fib(3, 3).
test(t5):- fib(4, 5).
test(t6):- fib(5, 8).
test(t7):- fib(13, 377).

:- end_tests(fib).
