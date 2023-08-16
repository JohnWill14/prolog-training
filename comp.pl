comp([],[]).

comp([X], [X]):- !.

comp([X, X | Tail], R):-
   comp([X|Tail], R),
   !.


comp([X, Y | Tail],  [X|R]):-
   X \== Y,
   comp([Y|Tail], R),
   !.