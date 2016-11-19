function [ y ] = valoresGrafico( polinomio, soporte )
%VALORESGRAFICO Summary of this function goes here
%   Detailed explanation goes here
    y= [];
    n= length(soporte);
    for i=1:n
        x = polyval(polinomio,soporte(i));
        y = [y x];
    end

end

