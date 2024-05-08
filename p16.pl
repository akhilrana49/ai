%Insert nth element in the list
start:-
	write('Enter a list: '),	%Prompt a list
	read(L),

	(is_list(L) ->	%Ensuring lists is accurate
		write('Value of n: '),
		read(N),		

		write('Element: '),
		read(I),

		insert_nth(I, N, L, R),	%Function call
		write('New List: '), write(R)
	;	write('Invalid Input.')
	).

insert_nth(I, 0, L, [I|L]).	%Base Case: insert element at the beginning
insert_nth(I, N, [H|T], [H|R]):-
	N > 0,
	N1 is N-1,
	insert_nth(I, N1, T, R).
