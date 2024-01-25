:- initialization(main).

main :-
    list_sum([], 0),
    list_sum([1, 2, 3, 4, 5], Sum),
    write(Sum).

list_sum([], 0).

list_sum([Head|Tail], Sum) :-
    list_sum(Tail, TailSum),
    Sum is Head + TailSum.