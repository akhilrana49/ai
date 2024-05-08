%Maximum element in the list
start:-
	write('Enter a list: '),	%Prompt to enter a list
	read(L),	%Reading the list
	
	(is_list(L) ->	%Checks if the input term is indeed a list
		L = [Head|Tail],	%Get the first element of the list
		maxlist(Tail, Head, M),
		write('Max element of the list: '),
		write(M)
	;	write('Invalid input.\n')
	).

maxlist([], Max, Max):- !.	%Base Case
maxlist([Head|Tail], X, M):-
	(Head > X ->
		maxlist(Tail, Head, M)
	;	maxlist(Tail, X, M)
	).



