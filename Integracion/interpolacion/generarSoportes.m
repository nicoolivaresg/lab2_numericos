function [ intervalos ] = generarSoportes( x_inicial, x_final, distancia )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    intervalos = [];
    intervalo = [];
    x = x_inicial;
    i=1
    while i< length(distancia)
        while x~=x_final
            intervalo = [intervalo x];
            x = x + distancia(i);
        end
        intervalos = [intervalos;intervalo]
        i=i+1
    end
end

