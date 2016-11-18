function [ error ] = rmse( Px, fx, soporte , df)
%RMSE Summary of this function goes here
%   Esta función se encarga de calcular la Raiz del error cuadratico Medio
%   para la aproximación:
%       Px -> polinomio aproximado de fx
%       fx -> función aproximada
%       soporte -> puntos de x
    n = length(soporte);
    error = 0;
    h = soporte(2)-soporte(1);
    for i=1:n
        if df== 1
            x_i = (soporte(i) - soporte(1))/h;
            %x_i = soporte(i);
        else
            x_i = soporte(i);
        end
        px_i = polyval(Px,x_i);
        fx_i = fx(x_i);
        error = error + (px_i - fx_i)^2;
    end
    error = sqrt(error/n);

end

