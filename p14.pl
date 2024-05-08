%Find nth element of the list
start:-
	write('Enter a list: '),	%Prompt a list
	read(L),

	(is_list(L) ->	%Ensuring lists is accurate
		write('Value of n: '),
		read(N),		

		nth_element(N, L, X),	%Function call
		write('Element: '), write(X)
	;	write('Invalid Input.')
	).

nth_element(N, L, X):-
	nth0(N, L, X).	%Indexing starting from 0
	%nth(N, L, X).	%Indexing starting from 1
