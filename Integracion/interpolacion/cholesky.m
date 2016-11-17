function [ sol ] = cholesky( A, B )
%CHOLESKY Summary of this function goes here
%   Detailed explanation goes here
    U = chol(A, 'upper');
    L = chol(A,'lower');
    y = L\B;
    sol = U\y;
end

