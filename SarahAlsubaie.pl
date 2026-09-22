% Facts
male(abdulaziz).
male(mohammed).
male(nawaf).

female(dalal).
female(sarah).

parent(abdulaziz, mohammed).
parent(abdulaziz, nawaf).
parent(abdulaziz, sarah).

parent(dalal, mohammed).
parent(dalal, nawaf).
parent(dalal, sarah).

% Rules
father(X, Y):-
    male(X),
    parent(X, Y).

mother(X, Y):-
    female(X),
    parent(X, Y).

sister(X, Y):-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y):-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.












































