function [ intervalo ] = generarSoporte( x_inicial, x_final, distancia )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   Funci�n que se encarga de generar el soporte de valores de x entre el
%   intervalo (x_inicial, x_final) con una distancia entre elementos dada
%   por par�metro.
    intervalo = [];
    x = x_inicial;
    while x~=x_final
        intervalo = [intervalo x];
        x = x + distancia;
    end
end

