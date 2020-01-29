function [ sol ] = gaussianElimination(A);

for i = 1:(length(A)-2)
    for j = (i + 1):(length(A) - 1)
        A(j,:) = A(j,:) - (A(j,i)/A(i,i))*A(i,:);
    end
end

B = A(:,length(A));

B(length(A) - 1) = B((length(A) - 1))/(A((length(A) - 1),(length(A) - 1)));

if  sum(A((length(A)-1),1:(length(A)-1))) == 0
    fprintf('WARNING: This program cannot provide a solution to this problem\n')
    
else

for i = (length(A) - 2):-1:1
    for j = (length(A) - 1):-1:(i + 1)
        B(i) = B(i) - B(j)*A(i,j);
    end
    
    B(i) = B(i)/A(i,i);
end
sol = B

end

end
