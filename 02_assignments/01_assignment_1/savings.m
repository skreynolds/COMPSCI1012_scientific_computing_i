v = [.06 .065];

F = [1100 1100];
P = [1000 995];

n = (log(F) - log(P))./(log(1 + v./12));

disp(['The number of periods for Bank A and Bank B is ', ...
    num2str(ceil(n(1))) ' & ',num2str(ceil(n(2))) ' respectively'])