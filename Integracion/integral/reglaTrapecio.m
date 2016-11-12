function [ in ] = reglaTrapecio( polinomio, a, b , n)
%REGLATRAPECIO Summary of this function goes here
%   Detailed explanation goes here
    dx =(b-a)/n;
    in = polyval(polinomio,a);
    for i=2:n
        a = a+dx;
        in = in+2*polyval(polinomio,a);
    end
    a = a+dx;
    in = in+polyval(polinomio,a);
    in = in*dx/2;
end

