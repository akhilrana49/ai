%Merge 2 ordered lists
start:-
	write('Enter first list: '),	%Prompt first list
	read(L1),

	write('Enter second list: '),	%Prompt second list
	read(L2),

	(is_list(L1), is_list(L2) ->	%Ensuring both lists are in correct syntax
		merge(L1, L2, L3),	%Function call
		write('Merged List: '), write(L3)
	;	write('Invalid Input.')
	).

merge([], L2, L2).	%Base Case: if L1 is empty append L2 to L3
merge(L1, [], L1).	%Base Case: if L2 is empty append L1 to L3

merge([H1|T1], [H2|T2], [H1|L3]):-
	H1 =< H2,
	merge(T1, [H2|T2], L3).

merge([H1|T1], [H2|T2], [H2|L3]):-
	H1 > H2,
	merge([H1|T1], T2, L3).
