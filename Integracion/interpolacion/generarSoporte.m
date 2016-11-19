function [ intervalo ] = generarSoporte( x_inicial, x_final, distancia )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   Función que se encarga de generar el soporte de valores de x entre el
%   intervalo (x_inicial, x_final) con una distancia entre elementos dada
%   por parámetro.
    n= (x_final -x_inicial)/distancia;
    intervalo = x_inicial;
    x = x_inicial;
    for i=2:n+1
        x = x + distancia;
        intervalo = [intervalo x];
    end
end

