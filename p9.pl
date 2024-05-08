
%Concatenating two lists
start:-
	write('Enter list1: '),	%Prompt to enter a list
	read(L1),	%Reading the list
	
	write('Enter list2: '),	%Prompt to enter a list
	read(L2),	%Reading the list
	
	(is_list(L1), is_list(L2) ->	%Checks if the input term is indeed a list
		conc(L1, L2, L3),
		write('Concatenated list (L3): '), 
		write(L3)
	;	write('Invalid input.\n')
	).

	
conc(L1, L2, L3):-
	append(L1, L2, L3).

