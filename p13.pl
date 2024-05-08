% Base case: an empty list has even length.
evenlength([]):- !.

% Recursive case: a list has even length if its tail has odd length.
evenlength([_|T]) :- oddlength(T).

% Base case: a list with a single element has odd length.
oddlength([_]):- !.

% Recursive case: a list has odd length if its tail has even length.
oddlength([_|T]) :- evenlength(T).
