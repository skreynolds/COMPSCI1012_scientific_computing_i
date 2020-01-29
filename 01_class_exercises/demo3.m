function alphacmp(a,b)

for i = 1:length(a)
    if ~(lower(a(i))==lower(b(i)))
        if lower(a(i))<lower(b(i))
            p = 0;
            return
        else
            p = 1;
            return
        end
    end
end
end