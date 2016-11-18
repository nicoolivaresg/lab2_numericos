function [ in ] = reglaSimpson( polinomio, a, b, n)
%REGLASIMPSON Summary of this function goes here
%   Detailed explanation goes here
%   Esta función se encarga de entregar el valor numérico de la integral
%   del polinomio entre los puntos a,b y con una division de n segmentos
    if mod(n,2) ~= 0
        %Simpson 3/8 para numero de segmentos n impar
        dx = (b-a)/n;
        in = polyval(polinomio,a);
        for i=2:n
            a = a + dx;
            in = in + 3*polyval(polinomio,a);
        end
        a = a + dx;
        in = in + polyval(polinomio,a);
        in = in*3*dx/8;
    else
        %Simpson 1/3 para numero de segmentos n par
        dx = (b-a)/n;
        in = polyval(polinomio,a);
        i=1;
        while i<=n-1
            a = a+dx;
            in = in + 4*polyval(polinomio,a);
            i=i+2;
        end
        j=2;
        while j<=n-2
            a = a+dx;
            in = in + 2*polyval(polinomio,a);
            j=j+2;
        end
        a = a + dx;
        in = in + polyval(polinomio,a);
        in = in*dx/3;
    end

end

