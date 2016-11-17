fx1=@(x) exp(x)+x;
fx2=@(x) x^3+4*x^2-10*x+2;
distancia = [0.5 1 2 5 0.05];
x_inicial = -20;
x_final =20;



%Soporte [-20,20] con h = 0.5
[soporte05] = generarSoporte(x_inicial,x_final, distancia(1));
%Soporte [-20,20] con h = 1
[soporte1] = generarSoporte(x_inicial,x_final, distancia(2));
%Soporte [-20,20] con h = 2
[soporte2] = generarSoporte(x_inicial,x_final, distancia(3));
%Soporte [-20,20] con h = 5
[soporte5] = generarSoporte(x_inicial,x_final, distancia(4));
%Soporte [-20,20] con h = 0.05
[soporte005] = generarSoporte(x_inicial,x_final, distancia(5));

%%%%%%%%%%%%% INTERPOLACIÓN %%%%%%%%%%%%%%%%%%%
%%%% Función f(x) = e^x+x  %%%%%

%Soporte05

%Interpolación de Newton con Diferencias Divididas
[PNDD1_05,errNDD1_05] = inewtonDD(soporte05,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_05,errNDF1_05] = inewtonDF(soporte05,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_05,errMC1_05] = minimosCuadrados(soporte05,fx1,3);

%Soporte1

%Interpolación de Newton con Diferencias Divididas
[PNDD1_1,errNDD1_1] = inewtonDD(soporte1,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_1,errNDF1_1] = inewtonDF(soporte1,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_1,errMC1_1] = minimosCuadrados(soporte1,fx1,3);

%Soporte 2

%Interpolación de Newton con Diferencias Divididas
[PNDD1_2,errNDD1_2] = inewtonDD(soporte2,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_2,errNDF1_2] = inewtonDF(soporte2,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_2,errMC1_2] = minimosCuadrados(soporte2,fx1,3);

%Soporte 5

%Interpolación de Newton con Diferencias Divididas
[PNDD1_5,errNDD1_5] = inewtonDD(soporte5,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_5,errNDF1_5] = inewtonDF(soporte5,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_5,errMC1_5] = minimosCuadrados(soporte5,fx1,3);

%%%% Función f(x) =  x^3+4*x^2-10*x+2 %%%%%

%Soporte 05

%Interpolación de Newton con Diferencias Divididas
[PNDD2_05,errNDD2_05] = inewtonDD(soporte05,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_05,errNDF2_05] = inewtonDF(soporte05,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_05,errMC2_05] = minimosCuadrados(soporte05,fx2,3);

%Soporte 1

%Interpolación de Newton con Diferencias Divididas
[PNDD2_1,errNDD2_1] = inewtonDD(soporte1,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_1,errNDF2_1] = inewtonDF(soporte1,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_1,errMC2_1] = minimosCuadrados(soporte1,fx2,3);

%Soporte 2

%Interpolación de Newton con Diferencias Divididas
[PNDD2_2,errNDD2_2] = inewtonDD(soporte2,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_2,errNDF2_2] = inewtonDF(soporte2,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_2,errMC2_2] = minimosCuadrados(soporte2,fx2,3);

%Soporte 2

%Interpolación de Newton con Diferencias Divididas
[PNDD2_5,errNDD2_5] = inewtonDD(soporte5,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_5,errNDF2_5] = inewtonDF(soporte5,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_5,errMC2_5] = minimosCuadrados(soporte5,fx2,3);


% 
% %%%%%%%%%%%% INTEGRACIÓN %%%%%%%%%%%5
% 
% [intTrap0] = reglaTrapecio(PMC1_05,0,5,3);
% [intTrap1] = reglaTrapecio(PMC1_1,0,5,3);
% [intTrap2] = reglaTrapecio(PMC1_2,0,5,3);
% [intTrap3] = reglaTrapecio(PMC1_5,0,5,3);
% [intTrap4] = reglaTrapecio(PMC2_05,0,5,3);
% [intTrap5] = reglaTrapecio(PMC2_1,0,5,3);
% [intTrap6] = reglaTrapecio(PMC2_2,0,5,3);
% [intTrap7] = reglaTrapecio(PMC2_5,0,5,3);
% 
% [intSimPar0] = reglaSimpson(PMC1_05,0,5,10);
% [intSimPar1] = reglaSimpson(PMC1_1,0,5,10);
% [intSimPar2] = reglaSimpson(PMC1_2,0,5,10);
% [intSimPar3] = reglaSimpson(PMC1_5,0,5,10);
% [intSimPar4] = reglaSimpson(PMC2_05,0,5,10);
% [intSimPar5] = reglaSimpson(PMC2_1,0,5,10);
% [intSimPar6] = reglaSimpson(PMC2_2,0,5,10);
% [intSimPar7] = reglaSimpson(PMC2_5,0,5,10);
% 
% [intSimImpar0] = reglaSimpson(PMC1_05,0,5,9);
% [intSimImpar1] = reglaSimpson(PMC1_1,0,5,9);
% [intSimImpar2] = reglaSimpson(PMC1_2,0,5,9);
% [intSimImpar3] = reglaSimpson(PMC1_5,0,5,9);
% [intSimImpar4] = reglaSimpson(PMC2_05,0,5,9);
% [intSimImpar5] = reglaSimpson(PMC2_1,0,5,9);
% [intSimImpar6] = reglaSimpson(PMC2_2,0,5,9);
% [intSimImpar7] = reglaSimpson(PMC2_5,0,5,9);
% 
% 
% [intExacto1] = integral(fx1,0,5);

save('..\test\data.mat');

%semilogy(soporte005,y2_005);
%semilogy(soporte005,y1_005);
%grid;
%loglog(soporte005,Px2_005);
%loglog(soporte005,Px2_005);

%[a,b,c,d]=splineCubico(soporte005,y1_005);



