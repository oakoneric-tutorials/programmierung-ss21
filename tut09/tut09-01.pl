nat (0).
nat(s(X)) :- nat(X).

listnat ([]).
listnat ([X|XS]) :- nat(X), listnat(XS).

prefix([]    , Ys )    :- listnat(Ys). 
prefix([X|Xs], [X|Ys]) :- nat(X), prefix(Xs, Ys).

sublist(Xs   , [Y|Ys]) :- nat(Y), sublist(Xs, Ys). 
sublist(Xs   , Ys )    :- prefix(Xs, Ys). 