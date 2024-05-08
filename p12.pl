%Sum of all the elements of a list
start:-
	write('Enter a list: '),	%Prompt to enter a list
	read(L),	%Reading the list
	
	(is_list(L) ->	%Checks if the input term is indeed a list
		sumlist(L, S),
		write('Sum of the elements of the list: '),
		write(S)
	;	write('Invalid input.\n')
	).

sumlist([], 0):- !.	%Base Case
sumlist([Head|Tail], S):-
	sumlist(Tail, Rest),
	S is Rest + Head.

