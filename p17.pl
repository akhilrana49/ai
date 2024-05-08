%Delete nth element from the list
start:-
	write('Enter a list: '),	%Prompt a list
	read(L),

	(is_list(L) ->	%Ensuring lists is accurate
		write('Value of n: '),
		read(N),		

		delete_nth(N, L, R),	%Function call
		write('New List: '), write(R)
	;	write('Invalid Input.')
	).

delete_nth(0, [H|T], T).	%Base Case: insert element at the beginning
delete_nth(N, [H|T], [H|R]):-
	N > 0,
	N1 is N-1,
	delete_nth(N1, T, R).

