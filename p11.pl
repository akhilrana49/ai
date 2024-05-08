%Palindrome of a list
start:-
	write('Enter a list: '),	%Prompt to enter a list
	read(L),	%Reading the list
	
	(is_list(L) ->	%Checks if the input term is indeed a list
		palindrome(L)
	;	write('Invalid input.\n')
	).

palindrome(L):-
	reverse(L, L_Rev),	%Reverse the list
	(L = L_Rev ->	%Check if the reversed list is equal to the original list
		write('The list is a palindrome.')
	;write('The list is not a palindrome.')
	).

reverse([], []).	%Base Case: an empty list is its own reverse
reverse([Head|Tail], L_Rev):-
	append(Tail, L_Rev),
	reverse(Head, L_Rev).

