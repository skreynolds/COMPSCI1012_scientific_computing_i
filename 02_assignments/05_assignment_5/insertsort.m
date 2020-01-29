function insertsort(a)

b = a;

for i = 1:length(b)
    value = b(i);
    a = [a(a<value),a(~(a<value))];
end
disp(a)
end