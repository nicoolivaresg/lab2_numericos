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
%Interpolación de Newton con Diferencias Divididas
%Interpolación de Newton con Diferencias Finitas
%Interpolación con Splines Cúbicos.
%MinimosCuadrados
    %Soporte05
[PMC1_05] = minimosCuadrados(soporte05,fx1,3);
    %Soporte1
[PMC1_1] = minimosCuadrados(soporte1,fx1,3);
    %Soporte2
[PMC1_2] = minimosCuadrados(soporte2,fx1,3);
    %Soporte5
[PMC1_5] = minimosCuadrados(soporte5,fx1,3);


%%%% Función f(x) = x^3+4*x^2-10*x+2  %%%%%
%Interpolación de Newton con Diferencias Divididas
%Interpolación de Newton con Diferencias Finitas
%Interpolación con Splines Cúbicos.
%MinimosCuadrados
[PMC2_05] = minimosCuadrados(soporte05,fx2,3);
    %Soporte1
[PMC2_1] = minimosCuadrados(soporte1,fx2,3);
    %Soporte2
[PMC2_2] = minimosCuadrados(soporte2,fx2,3);
    %Soporte5
[PMC2_5] = minimosCuadrados(soporte5,fx2,3);


%%%%%%%%%%%% INTEGRACIÓN %%%%%%%%%%%5

[intTrap0] = reglaTrapecio(Px0,0,5,3);
[intTrap1] = reglaTrapecio(Px1,0,5,3);
[intTrap2] = reglaTrapecio(Px2,0,5,3);
[intTrap3] = reglaTrapecio(Px3,0,5,3);
[intTrap4] = reglaTrapecio(Px4,0,5,3);
[intTrap5] = reglaTrapecio(Px5,0,5,3);
[intTrap6] = reglaTrapecio(Px6,0,5,3);
[intTrap7] = reglaTrapecio(Px7,0,5,3);

[intSimPar0] = reglaSimpson(Px0,0,5,10);
[intSimPar1] = reglaSimpson(Px1,0,5,10);
[intSimPar2] = reglaSimpson(Px2,0,5,10);
[intSimPar3] = reglaSimpson(Px3,0,5,10);
[intSimPar4] = reglaSimpson(Px4,0,5,10);
[intSimPar5] = reglaSimpson(Px5,0,5,10);
[intSimPar6] = reglaSimpson(Px6,0,5,10);
[intSimPar7] = reglaSimpson(Px7,0,5,10);

[intSimImpar0] = reglaSimpson(Px0,0,5,9);
[intSimImpar1] = reglaSimpson(Px1,0,5,9);
[intSimImpar2] = reglaSimpson(Px2,0,5,9);
[intSimImpar3] = reglaSimpson(Px3,0,5,9);
[intSimImpar4] = reglaSimpson(Px4,0,5,9);
[intSimImpar5] = reglaSimpson(Px5,0,5,9);
[intSimImpar6] = reglaSimpson(Px6,0,5,9);
[intSimImpar7] = reglaSimpson(Px7,0,5,9);


[intExacto1] = integral(fx1,0,5);

%semilogy(soporte005,y2_005);
%semilogy(soporte005,y1_005);
%grid;
%loglog(soporte005,Px2_005);
%loglog(soporte005,Px2_005);

%[a,b,c,d]=splineCubico(soporte005,y1_005);



