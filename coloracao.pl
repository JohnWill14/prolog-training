cor(laranja).
cor(cinza).
cor(verde).


cor_diff(A,B):-
 cor(A),
 cor(B),
  A \==B.

coloracao(A,B,C,D,E):-
  cor_diff(A,B),
  cor_diff(A,C),
  cor_diff(A,D),
  cor_diff(C,D),
  cor_diff(B,D),
  cor_diff(B,E),
  cor_diff(D,E).