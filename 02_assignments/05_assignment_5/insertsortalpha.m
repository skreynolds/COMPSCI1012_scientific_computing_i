function insertsortalpha(a)

for i = 2:size(a,1)
    value = a(i,:);
    j = i - 1;
    insert = 1;
    while insert == 1
        [p] = alphacmp(a(j,:),value);
        if  p == 1
            a(j + 1,:) = a(j,:);
            j = j - 1;
            if j < 1
                insert = 0;
            end
        else
            insert = 0;
        end
    end
    a(j + 1,:) = value;
end
disp(a)
end