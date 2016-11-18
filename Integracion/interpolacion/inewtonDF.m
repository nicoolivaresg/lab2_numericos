function [ Px ] = inewtonDF( soporte, fx )
%INEWTONDF Summary of this function goes here
%   Detailed explanation goes here
%   
    Px = [];
    y = arrayfun(fx,soporte);
    n = length(soporte);
    tabla = zeros(n);
    %Primero se genera la tabla de diferencias finitas 
    for j=1:n
        tabla(j,1) = y(j);
    end
    k=2;
    while k<=n
        i=n-k+1;
        while i>=1
            tabla(i,k) = tabla(i+1,k-1) - tabla(i,k-1);
            i=i-1;
        end
        k=k+1;
    end
    coef =[];
    for i=1:n
        coef = [coef tabla(1,i)];
    end
    %Se generan los coeficientes con los productos de (x-x0)...(x-xn)

    Px=coef(1);
    for i=2:n
        pol=1;
        for j=0:i-2
            pol=conv(pol,[1 -j]);
        end
        pol = pol/factorial(i-1);
        Px=polisum(Px,coef(i)*pol);
    end
    
    Px=fliplr(coef);
   % [error] = rmse(Px,fx,soporte);
end

