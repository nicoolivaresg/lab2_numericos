function [ intervalo ] = generarSoporte( x_inicial, x_final, distancia )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   Función que se encarga de generar el soporte de valores de x entre el
%   intervalo (x_inicial, x_final) con una distancia entre elementos dada
%   por parámetro.
    n= (x_final -x_inicial)/distancia;
    intervalo = [];
    x = x_inicial;
    for i=1:n
        intervalo = [intervalo x];
        x = x + distancia;
    end
end

