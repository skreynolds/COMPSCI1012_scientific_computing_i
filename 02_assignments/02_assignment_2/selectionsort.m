a = input('Enter a list of numbers: ');
l = length(a);

disp(a)

for i = 1:(l-1)
    min_index = i;
        for j = (i+1):l
            if a(j) < a(min_index)
                min_index = j;
            end
        end
    k = a(min_index);
    a(min_index) = a(i);
    a(i) = k;
    disp(a)
end