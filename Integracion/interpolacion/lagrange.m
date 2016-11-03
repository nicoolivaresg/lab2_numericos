% Esta funcion realiza la interpolacion polinomica a traves del uso
% de la formula de Lagrange. Para ello requiere el paso de dos
% parametros, el vector de valores independientes y el de la funcion
% evaluada en dichos puntos.
%
% Tras la ejecucion, el programa devuelve los coeficientes del
% polinomio resultante. La interfaz de la funcion es:
%
%               [Px] = Lagrange (x,fx)
%
%       Px es el polinomio de interpolacion de Lagrange
%
% Autor: Jose Garcia Pullido

function [Px] = lagrange (x,fx)
long=length(x);
Px=0;
for i=1:long
    pol=1;
    for k=1:long            
       if k~=i  
         pol=conv(pol,[1 -x(k)]);    % [1 -x(i)] es el polinomio (x-xi)
       end   
    end
    Px=Px + fx(i)*(pol./polyval(pol,x(i)));
    % -> Px=Px + fx(k)*Lx(k) (Sumatoria)
end

