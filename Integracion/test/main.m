fx1=@(x) exp(x)+x;
fx2=@(x) x.^3+4*x.^2-10*x+2;
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
[PNDD1_05] = inewtonDD(soporte05,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_05] = inewtonDF(soporte05,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_05] = minimosCuadrados(soporte05,fx1,3);

%Soporte1

%Interpolación de Newton con Diferencias Divididas
[PNDD1_1] = inewtonDD(soporte1,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_1] = inewtonDF(soporte1,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_1] = minimosCuadrados(soporte1,fx1,3);

%Soporte 2

%Interpolación de Newton con Diferencias Divididas
[PNDD1_2] = inewtonDD(soporte2,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_2] = inewtonDF(soporte2,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_2] = minimosCuadrados(soporte2,fx1,3);

%Soporte 5

%Interpolación de Newton con Diferencias Divididas
[PNDD1_5] = inewtonDD(soporte5,fx1);
%Interpolación de Newton con Diferencias Finitas
[PNDF1_5] = inewtonDF(soporte5,fx1);
%Interpolación por Mínimos Cuadrados
[PMC1_5] = minimosCuadrados(soporte5,fx1,3);

%%%% Función f(x) =  x^3+4*x^2-10*x+2 %%%%%

%Soporte 05

%Interpolación de Newton con Diferencias Divididas
[PNDD2_05] = inewtonDD(soporte05,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_05] = inewtonDF(soporte05,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_05] = minimosCuadrados(soporte05,fx2,3);

%Soporte 1

%Interpolación de Newton con Diferencias Divididas
[PNDD2_1] = inewtonDD(soporte1,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_1] = inewtonDF(soporte1,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_1] = minimosCuadrados(soporte1,fx2,3);

%Soporte 2

%Interpolación de Newton con Diferencias Divididas
[PNDD2_2] = inewtonDD(soporte2,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_2] = inewtonDF(soporte2,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_2] = minimosCuadrados(soporte2,fx2,3);

%Soporte 5

%Interpolación de Newton con Diferencias Divididas
[PNDD2_5] = inewtonDD(soporte5,fx2);
%Interpolación de Newton con Diferencias Finitas
[PNDF2_5] = inewtonDF(soporte5,fx2);
%Interpolación por Mínimos Cuadrados
[PMC2_5] = minimosCuadrados(soporte5,fx2,3);


%%% GRÁFICO %%%
 [PMC1_005] = minimosCuadrados(soporte005,fx1,3);
 [PNDD1_005] = inewtonDD(soporte005,fx1);
 [PNDF1_005] = inewtonDF(soporte005,fx1);
 [PMC2_005] = minimosCuadrados(soporte005,fx2,3);
 [PNDD2_005] = inewtonDD(soporte005,fx2);
 [PNDF2_005] = inewtonDF(soporte005,fx2);
 %hold off;
 %hold on;
 ymc1 = valoresGrafico(PMC1_005,soporte005);
 %semilogy(soporte005,ymc1,'red');
 %hold on
 yndd1 = valoresGrafico(PNDD1_005,soporte005);
 %semilogy(soporte005,yndd1,'yellow');
 %hold on
 yndf1 = valoresGrafico(PNDF1_005,soporte005);
 %semilogy(soporte005,yndf1,'green');
 %hold on;
 
 ymc2 = valoresGrafico(PMC2_005,soporte005);
 %semilogy(soporte005,ymc2,'cyan');
 %hold on
 yndd2 = valoresGrafico(PNDD2_005,soporte005);
 %semilogy(soporte005,yndd2,'blue');
 %hold on
 yndf2 = valoresGrafico(PNDF2_005,soporte005);
 %semilogy(soporte005,yndf2,'black');
 %hold on;
 %legend('show');
 %hold off;
 %print -deps grafico;
 createfigure(soporte005,[ymc1;yndd1;yndf1;ymc2;yndd2;yndf2]);
%%%% ERROR RMSE %%%%
[eNDF1_05] = rmse(PNDF1_05,fx1,soporte005, 1);
[eNDF1_1] = rmse(PNDF1_1,fx1,soporte005,1);
[eNDF1_2] = rmse(PNDF1_2,fx1,soporte005,1);
[eNDF1_5] = rmse(PNDF1_5,fx1,soporte005,1);

[eNDD1_05] = rmse(PNDD1_05,fx1,soporte005,0);
[eNDD1_1] = rmse(PNDD1_1,fx1,soporte005,0);
[eNDD1_2] = rmse(PNDD1_2,fx1,soporte005,0);
[eNDD1_5] = rmse(PNDD1_5,fx1,soporte005,0);

[eMC1_05] = rmse(PMC1_05,fx1,soporte005,0);
[eMC1_1] = rmse(PMC1_1,fx1,soporte005,0);
[eMC1_2] = rmse(PMC1_2,fx1,soporte005,0);
[eMC1_5] = rmse(PMC1_5,fx1,soporte005,0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[eNDF2_05] = rmse(PNDF2_05,fx2,soporte005,1);
[eNDF2_1] = rmse(PNDF2_1,fx2,soporte005,1);
[eNDF2_2] = rmse(PNDF2_2,fx2,soporte005,1);
[eNDF2_5] = rmse(PNDF2_5,fx2,soporte005,1);

[eNDD2_05] = rmse(PNDD2_05,fx2,soporte005,0);
[eNDD2_1] = rmse(PNDD2_1,fx2,soporte005,0);
[eNDD2_2] = rmse(PNDD2_2,fx2,soporte005,0);
[eNDD2_5] = rmse(PNDD2_5,fx2,soporte005,0);

[eMC2_05] = rmse(PMC2_05,fx2,soporte005,0);
[eMC2_1] = rmse(PMC2_1,fx2,soporte005,0);
[eMC2_2] = rmse(PMC2_2,fx2,soporte005,0);
[eMC2_5] = rmse(PMC2_5,fx2,soporte005,0);

% 
% %%%%%%%%%%%% INTEGRACIÓN %%%%%%%%%%%5
% Intervalo [-20,20]
% Se eligen las tres aproximaciones con menos error, en base al RMSE
% En este caso se eligen 
%   Para la funcion f(x) = e^x+x
%0.   PMC1_05
%1.   PNDD1_1
%   Para la funcion f(x) = x^3+4*x^2-10*x+2
%3.   PMC2_5
%4.   PNDD2_5
%5.   PNDF2_05

%%VALORES REALES %%%
[intRealFX1] = integral(fx1,-20,20);
[intRealFX2] = integral(fx2,-20,20);   

%%VALORES DE LA INTEGRACIÓN NUMÉRICA
%   Para la funcion f(x) = e^x+x
%0.   PMC1_05
[intTrapMC1_05] = reglaTrapecio(PMC1_05,-20,20,5);
[intSimpMC1_05] = reglaSimpson(PMC1_05,-20,20,5);
%1.   PNDD1_1
[intTrapNDD1_1] = reglaTrapecio(PNDD1_1,-20,20,5);
[intSimpNDD1_1] = reglaSimpson(PNDD1_1,-20,20,5);
%   Para la funcion f(x) = x^3+4*x^2-10*x+2
%3.   PMC2_2
[intTrapMC2_5] = reglaTrapecio(PMC2_5,-20,20,5);
[intSimpMC2_5] = reglaSimpson(PMC2_5,-20,20,5);
%4.   PNDD2_5
[intTrapNDD2_5] = reglaTrapecio(PNDD2_5,-20,20,5);
[intSimpNDD2_5] = reglaSimpson(PNDD2_5,-20,20,5);
%5.   PNDF2_05
[intTrapNDF2_05] = reglaTrapecio(PNDF2_05,-20,20,5);
[intSimpNDF2_05] = reglaSimpson(PNDF2_05,-20,20,5);


%%% ERROR PORCENTUAL DE LA INTEGRAL
%   Para la funcion f(x) = e^x+x
%0.   PMC1_05
[errorIntegralTrapMC0] =  errorPorcentual(intRealFX1, intTrapMC1_05);
[errorIntegralSimpMC0] = errorPorcentual(intRealFX1, intSimpMC1_05);
%1.   PNDD1_1
[errorIntegralTrapNDD1] =  errorPorcentual(intRealFX1, intTrapNDD1_1);
[errorIntegralSimpNDD1] = errorPorcentual(intRealFX1, intSimpNDD1_1);
%   Para la funcion f(x) = x^3+4*x^2-10*x+2
%3.   PMC2_51
[errorIntegralTrapMC2_5] =  errorPorcentual(intRealFX2, intTrapMC2_5);
[errorIntegralSimpMC2_5] = errorPorcentual(intRealFX2, intSimpMC2_5);
%4.   PNDD2_5
[errorIntegralTrapNDD2_5] =  errorPorcentual(intRealFX2, intTrapNDD2_5);
[errorIntegralSimpNDD2_5] = errorPorcentual(intRealFX2, intSimpNDD2_5);
%5.   PNDF2_05
[errorIntegralTrapNDF2_05] =  errorPorcentual(intRealFX2, intTrapNDF2_05);
[errorIntegralSimpNDF2_05] = errorPorcentual(intRealFX2, intSimpNDF2_05);
% 
%
% 
 save('..\test\data.mat'); 
 
% 
% 
