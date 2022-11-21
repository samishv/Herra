function [valor] = entalpia2()
% Concentracion de la entalpía del NaOH
% T=160; masa=0.5; entalpia=189.28479 Btu/lb
clc
T=input('Introduce la temperatura en grados Farenheit');
m=input('Introduce la fraccion de masa del NaOH');

if( T<=50 ), fila1=1; x(1)=40; y1=fdos(fila1,m), fila1=2; x(2)=50; y2=fdos(fila1,m); end

if(T<=100 & T>50), fila2 = 2; x(1)=50; y1 = fdos(fila2,m), fila2 = 3; x(2)=100; y2 = fdos(filaentalpia2()entalpia2()entalpia2()2,m); end

if(T<=150 & T>100), fila3 = 3; x(1)=100; y1 = fdos(fila3,m), fila3 = 4; x(2)=150; y2 = fdos(fila3,m); end


if(T<=200 & T>150), fila4 = 4; x(1)=150; y1 = fdos(fila4,m), fila4 = 5; x(2)=200; y2 = fdos(fila4,m); end

if(T<=300 & T>200), fila5 = 5; x(1)=200; y1 = fdos(fila5,m), fila5 = 6; x(2)=300; y2 = fdos(fila5,m); end

if(T>300),          fila6 = 6; x(1)=300; y1 = fdos(fila6,m), fila6 = 7; x(2)=400; y2 = fdos(fila6,m); end

valor = y1 + (y2-y1)/(x(2)-x(1))*(T-x(1)) %Fórmula de interpolación lineal
end

function [y] = fdos(n1,m)
ter = load('NaOH.txt'); % load carga un archivo del current folder para extraer valores
y = sum(ter(n1,1) + ter(n1,2)*m + ter(n1,3)*m^2 + ter(n1,4)*m^3 + ter(n1,5)*m^4 + ter(n1,6)*m^5);
end
% T = 160; m = 0.5;
% entalpia1()  189.28479