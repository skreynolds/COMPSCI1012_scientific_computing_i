d = 137.51;
th = pi*d*n/180;
hold on
for n = 1:1000
    r = sqrt(n);
    plot(r.*cos(th), r.*sin(th), 'o')
end