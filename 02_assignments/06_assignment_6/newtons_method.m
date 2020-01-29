function [h] = newtons_method(gradfunc,ihessfunc,x_init,th)

h = x_init;

for i = 1:10
    h(:,i + 1) = h(:,i) - ihessfunc(h(:,i))*gradfunc(h(:,i));
    if (((h(1,i + 1) - h(1,(i)))^2 + (h(2,i + 1) - h(2,(i)))^2)^(1/2)) < th
        return
    end
end

end