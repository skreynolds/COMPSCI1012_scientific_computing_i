%random walk
n = input('Number of walks: ');
nsafe = 0;

for i = 1:n
    steps = 0;
    x = 0;
    y = 0;
    
    while x <= 50 && abs(y) <= 10 && steps < 1000
        steps = steps + 1;
        r =rand;
        if r < .6
            x = x + 1;
        elseif r < .8
            y = y + 1;
        else
            y = y - 1;
        end
    end
    
    if x > 50
        nsafe = nsafe + 1;
    end
    
end

prob = 100*nsafe/n;
disp(prob);