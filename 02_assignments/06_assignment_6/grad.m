function [sol] = grad(h)

sol = [exp(-h(1)^2-h(2)^2) - 2*(h(1)^2)*exp(-h(1)^2-h(2)^2);-2*h(1)*...
    h(2)*exp(-h(1)^2-h(2)^2)];

end