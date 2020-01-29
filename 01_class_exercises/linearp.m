%problem design
C = [6 4 7 5]';
A = [1 2 1 2;6 5 3 2;3 4 9 12];
B = [20 100 75]';

%variable upper and lower bounds
LB = [0 0 0 0]';
UB = [inf inf inf inf]';

%convert minimisation problem to a maximisation problem
f = -C;

%solve using linprog
[ X val ] = linprog(f,A,B,[],[],LB,UB);

%output results
fprintf('Produce %.0f X1 & %.0f X2 & %.0f X3 & %.0f X4\n for a maximum revenue of $%.2f\n'...
    ,X(1),X(2),X(3),X(4), -val)