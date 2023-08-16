

remove_ultimo([X,_],[X]):- !.

remove_ultimo([X| Tail],[X| Tail2]):-
  remove_ultimo(Tail, Tail2).

  :- use_module(library(plunit)).

  :- begin_tests(remove_ultimo).

    test(t1):- remove_ultimo([1,2,3], [1,2]).
    test(t2):- remove_ultimo([1,2,3,4,5,6], [1,2,3,4,5]).
    test(t3, [fail]):- remove_ultimo([1,2,3,4,5,6], [1,2,3,4,5,6]).


  :- end_tests(remove_ultimo).