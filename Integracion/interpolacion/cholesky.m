function [ sol ] = cholesky( A, B )
%CHOLESKY Summary of this function goes here
%   Detailed explanation goes here
    n = length(A);
    U = zeros(n,n);
    for i=1:n
        suma = 0;
        for k=1:i-1
            suma = suma + U(k,i)^2;
        end
        U(i,i) = sqrt(A(i,i) - suma);
        for j=i+1:n
            suma = 0;
            for k=1:i-1
                suma = suma + U(k,i)*U(k,j);
            end 
            U(i,j) = (A(i,j) - suma)/U(i,i);
        end
    end
    sol = U\B;
end

