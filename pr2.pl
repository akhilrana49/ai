max(X, Y) :- 
X == Y -> (
write('X and Y are Equal')
);
             X > Y -> (
Z is X, 
write(Z)
);
             X < Y -> (
Z is Y, 
write(Z)).