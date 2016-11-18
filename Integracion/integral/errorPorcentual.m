function [ errorPorcentual ] = errorPorcentual( valor_exacto, valor_observado )
%ERRORPORCENTUAL Summary of this function goes here
%   Detailed explanation goes here
    errorPorcentual = (abs(valor_exacto - valor_observado)/valor_exacto)*100;

end

