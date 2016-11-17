% ALGORITMO DE INTERPOLACION DE NEWTON EN DIFERENCIAS DIVIDIDAS. 
%
%         function [Px]=inewton(x,fx)
%
%     x ---> puntos donde se conoce la funcion
%    fx ---> valores de la funcion en dichos puntos
%    Px ---> polinomio de interpolacion resultante
%
% Autor: Jose Garcia Pullido

function [Px, error]=inewtonDD(x,fx)
y = arrayfun(fx,x);
n=length(x); % Esto me da el grado maximo que tendra el polinomio de interpolacion
dif=zeros(n); % Matriz que va a contener las diferencias divididas
dif(:,1)=y';
cont=2;
for col=2:n
   for row=cont:n
      inicf=dif(cont-1,col-1);
      inicx=x(col-1);
      dif(row,col)=(dif(row,col-1)-inicf)/(x(row)-inicx);
   end
   cont=cont+1;
end
%dif
coef=diag(dif)'; % la diagonal principal de la matriz son los coeficientes
                 % que hay que multiplicar.

Px=0;
for i=0:n-1
   pol=1;
   for k=1:i
	pol=conv(pol,[1 -x(k)]);
   end
   if i<0
     Px=polisum(Px,coef(1)*pol);   
   else
     Px=polisum(Px,coef(i+1)*pol);
   end
end
%Px=fliplr(Px);
%[error] = errorPolinomialInterp(fx,Px,x(n));
[error] = rmse(Px,fx,x);


