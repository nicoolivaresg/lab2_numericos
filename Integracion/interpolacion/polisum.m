%	SUMA DE POLINOMIOS
%
%	function[suma]=polisum(a,b);
%
% Autor: Jose Garcia Pullido

function[suma]=polisum(a,b)

na=length(a);
nb=length(b);
suma=[zeros(1,nb-na) a]+[zeros(1,na-nb) b];
