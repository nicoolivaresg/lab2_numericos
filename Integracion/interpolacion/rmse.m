function [ error ] = rmse( Px, fx, soporte )
%RMSE Summary of this function goes here
%   Esta función se encarga de calcular la Raiz del error cuadratico Medio
%   para la aproximación:
%       Px -> polinomio aproximado de fx
%       fx -> función aproximada
%       soporte -> puntos de x
    n = length(soporte);
    error = 0;
    for i=1:n
        error = error + (polyval(Px,soporte(i))-fx(soporte(i)))^2;
    end
    error = sqrt(error/n);

end

