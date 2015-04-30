child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

% switched order of goals in rule; busts stack on unbounded recursion
descend(X,Y)  :-  descend(Z,Y),
    child(X,Z).

descend(X,Y)  :-  child(X,Y).
