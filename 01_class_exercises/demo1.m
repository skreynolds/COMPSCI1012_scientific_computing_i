k = 0:100;
r = input('Input a valus for r: ');
Y = zeros(1,size(k));
Y(1) = 0.2;

for i = 1:100
    Y(i + 1) = r*Y(i)*(1-Y(i));
end
plot(k,Y)