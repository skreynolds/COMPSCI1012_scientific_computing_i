format long

a = input('Please input a positive real number:  ');
N = input('Please input the number of iterations:  ');

x = a/2;    %Initial guess

disp(x)     %Display initial guess

for i = 1:N
    x = (x + a / x) / 2;
    disp(x)
end

disp( 'MATLAB''s value: ')
disp(sqrt(a))

disp('The difference is : ')
disp(x - sqrt(a))

format short