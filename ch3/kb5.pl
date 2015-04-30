child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y)  :-  child(X,Y).

% switched back the order of rules, no longer terminates
descend(X,Y)  :-  descend(Z,Y),
    child(X,Z).
