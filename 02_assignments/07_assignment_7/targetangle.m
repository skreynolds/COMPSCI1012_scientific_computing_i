function [theta diff] = targetangle(vs,d,e)

k = .2;
g = 9.81;
dt = .001;
ang = [];
dist = [];

for theta = 0:.01:pi/4
    u = zeros(1,1);
    v = zeros(1,1);
    x = zeros(1,1);
    y = zeros(1,1);
    n = 2;
    
    u(1) = vs*cos(theta);
    v(1) = vs*sin(theta);
    x(1) = 0;
    y(1) = 0;
    
    diff = abs(x(1) - d);
    
    while y(n - 1)>=0
        u(n) = u(n - 1) - dt*k*u(n - 1)*sqrt(u(n - 1)^2+v(n-1)^2);
        v(n) = v(n - 1) - dt*(k*v(n - 1)*sqrt(u(n - 1)^2+v(n - 1)^2)+g);
        x(n) = x(n - 1) + u(n - 1)*dt;
        y(n) = y(n - 1) + v(n - 1)*dt;
        diff = abs(x(n) - d);
        n = n + 1;
    end
   
    if diff < e
        ang = [ang theta];
        dist = [dist diff];
    end
    
end

minAng = max((dist == min(dist)).*ang);

u = zeros(1,1);
v = zeros(1,1);
x = zeros(1,1);
y = zeros(1,1);
n = 2;

u(1) = vs*cos(minAng);
v(1) = vs*sin(minAng);
x(1) = 0;
y(1) = 0;
    
while y(n - 1)>=0
    u(n) = u(n - 1) - dt*k*u(n - 1)*sqrt(u(n - 1)^2+v(n-1)^2);
    v(n) = v(n - 1) - dt*(k*v(n - 1)*sqrt(u(n - 1)^2+v(n - 1)^2)+g);
    x(n) = x(n - 1) + u(n - 1)*dt;
    y(n) = y(n - 1) + v(n - 1)*dt;
    diff = abs(x(n) - d);
    n = n + 1;
end
    
plot(x,y)

theta = minAng;
diff = min(dist);

end