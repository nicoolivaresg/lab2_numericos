fx1=@(x) exp(x)+x;
fx2=@(x) x^3+4*x^2-10*x+2;
fx3=@(x) 8+4*cos(x);
distancia = [0.5 1 2 5 0.05 0.005];
x_inicial = -20;
x_final =20;

[soporte05] = generarSoporte(x_inicial,x_final, distancia(1));
[soporte1] = generarSoporte(x_inicial,x_final, distancia(2));
[soporte2] = generarSoporte(x_inicial,x_final, distancia(3));
[soporte5] = generarSoporte(x_inicial,x_final, distancia(4));
[soporte005] = generarSoporte(x_inicial,x_final, distancia(5));
[soporte0005] = generarSoporte(x_inicial,x_final, distancia(6));

[sop3] = generarSoporte(x_inicial,x_final, distancia(5));
[Px] = minimosCuadrados(sop3,fx3,5);

[intTrap] = reglaTrapecio(Px,0,pi/2,3);
[intSimPar] = reglaSimpson(Px,0,pi/2,10);
[intSimImpar] = reglaSimpson(Px,0,pi/2,9);
[intExacto] = integral(fx3,0,pi/2);


%semilogy(soporte005,y2_005);
%semilogy(soporte005,y1_005);
%grid;
%loglog(soporte005,Px2_005);
%loglog(soporte005,Px2_005);

%[a,b,c,d]=splineCubico(soporte005,y1_005);



