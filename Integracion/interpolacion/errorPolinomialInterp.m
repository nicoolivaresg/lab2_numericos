function [ error ] = ErrorPolinomialInterp(fx , Px, x )
%ERRORPOLINOMIAL Summary of this function goes here
%   Detailed explanation goes here
x=0;
    error = abs(fx(x) - polyval(Px,x))/fx(x);
end

