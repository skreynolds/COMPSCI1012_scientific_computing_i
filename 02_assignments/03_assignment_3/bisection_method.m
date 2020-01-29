function [ sol steps ] = bisection_method(f,a,b,e)
fa = f(a); fb = f(b); m = (a + b)/2; fm = f(m);

steps = 0;

while abs(fm) >= e
    if fa*fm < 0
        b = m;
        fb = fm;
    else
        a = m;
        fa = fm;
    end
    
    m = (a + b)/2;
    fm = f(m);
    steps = steps + 1;
    sol = m;
    fprintf( 'Step %d, x = %f\n', steps, sol )
    
end