homem(albert).
homem(edward).
mulher(alice).
mulher(victoria).
pais(edward, victoria, albert).
pais(alice, victoria, albert).

irma(A, B):-
A \== B,
 mulher(B),
 pais(A, C, D),
 pais(B, C, D),
 mulher(C),
 homem(D).