natural(N):-
  N@>0.

mdc(X,X,X):-!.

mdc(X,Y, R):-
 menor(X,Y,Z),
 multiplos(Z,Z,P),
 calculo_mdc(X,Y,P,R).

calculo_mdc(A,B,[N|P], M):-
  A mod N =:= 0,
  B mod N =:= 0,
  A0 is A/N,
  B0 is B/N,
  calculo_mdc(A0,B0,P,R),
  M is R * N,
  !.

calculo_mdc(A,B,[N|P], M):-
  A mod N \== 0,
  B mod N \== 0,
  calculo_mdc(A,B,P,R),
  M is R,
  !.
calculo_mdc(_, _, [1], 1).

menor(A,B,C):-
 A >= B,
 C is B,
 !.

menor(A,B,C):-
 B @> A,
 C is A,
 !.


menor(A,B,C):-
 A >= B,
 C is B.

multiplos(_, 1, [1]):-!.

multiplos(X, N, P):-
 \+ div(X,N),
 N0 is N-1,
 multiplos(X, N0, P),
 !.

multiplos(X, N, P):-
 div(X,N),
 N0 is N-1,
 multiplos(X, N0, R),
 P = [N|R],
 !.

div(X,Y):-
 natural(Y),
 Y @< X,
 X mod Y =:= 0.



 :- use_module(library(plunit)).

 :- begin_tests(mdc).

test(t1):- mdc(120,144,24).
test(t2):- mdc(60,144,12).
test(t3):- mdc(540,1080,540).
test(t4):- mdc(540,8010,90).
test(t5):- mdc(540,8010,90).
test(t6):- mdc(20,24,4).
test(t7):- mdc(16,60,4).
test(t8):- mdc(18,60,6).

 :- end_tests(mdc).