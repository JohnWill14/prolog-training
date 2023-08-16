mediana(L, R):-
    sort(L, LS),
    length(LS, T),
    impar(T),
    !,
    I is integer(T/2)-1,
    nth0(I, LS, R).

 mediana(L, R):-
    sort(L, LS),
    length(LS, T),
    par(T),
    !,
    I is integer(T/2),
    I0 is I-1,
    nth0(I, LS, R0),
    nth0(I0, LS, R1),
    R is float(R1+R0)/2.

par(A):-
 R is A mod 2,
 R =:=0.

impar(A):-
 R is A mod 2,
 R \== 0.
 

 :- use_module(library(plunit)).

 :-begin_tests(med).
 
 test(t1):- mediana([1,4,4,5,6,7,7,7], 5).
 test(t2):- mediana([2,2,3,7,8,9,9], 7).
 test(t3):- mediana([1,4,4,4,6,7,7,7], 5.0).
 test(t4):- mediana([1,4,4,5,6,7,7,7], 5).


 :-end_tests(med).