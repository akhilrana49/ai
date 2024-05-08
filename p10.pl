%Reversing a list
start:-
	write('Enter a list: '),	%Prompt to enter a list
	read(L),	%Reading the list
	
	(is_list(L) ->	%Checks if the input term is indeed a list
		reverse(L,R),
		write('Reversed List: '),
		write(R)
	;	write('Invalid input.\n')
	).

reverse([], []).	%Base Case: an empty list is its own reverse
reverse([Head|Tail], R):-
	append(Tail, R),
	reverse(Head, R).


