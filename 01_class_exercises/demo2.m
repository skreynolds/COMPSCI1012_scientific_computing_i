p = input('Input number of iterations: ');
X = zeros(1,p + 1);
Y = zeros(1,p + 1);
X(1) = 0;
Y(1) = 0;

for i = 1:p
    X(i+1) = Y(i)*(1 + X(i)*sin(.7)) - 1.2*sqrt(abs(X(i)));
    Y(i+1) = .21 - X(i);
end

plot(X,Y,'.')