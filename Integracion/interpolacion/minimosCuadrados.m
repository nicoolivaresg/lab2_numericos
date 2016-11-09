function [ Px ] = minimosCuadrados( soporte, fx , grado)
%MINIMOSCUADRADOS Summary of this function goes here
%   Detailed explanation goes here
%   Función encargada de obtener los coeficientes de un polinomio de
%   interpolación de un grado otorgado como parámetro en base a un soporte
%   de puntos X= (x0,x1,x2,...,xn) y sus imagenes Fx = (f(x0),f(x1),f(x2),...,f(xn))
    if(length(soporte) == length(fx))
        Px = [];
        n = length(soporte);
        A = zeros(grado+1);
        B = zeros(grado+1,1);
        %Obtener A y B para posteriormente resolver con Cholesky
        for i=1:grado+1
            k=i-1;
            for j=1:grado+1
                if i==1 && j==1
                    A(i,j) = n;
                    k=k+1;
                else
                    sumaX  = sum(soporte.^k); %La suma de cada elemento de los puntos x^k con k=1:grado
                    A(i,j) = sumaX; 
                    k=k+1;
                end
                %Construyendo B
                m =(soporte.^(j-1)).*fx;
                B(j) = sum(m);
            end
            k=i-1;
        end
        R = chol(A);
        Px = linsolve(A,B);
    else
        print('El largo del soporte y las imagenes fx no coinciden');
    end

end

