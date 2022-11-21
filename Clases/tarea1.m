% Ejercicio 1 tarea 1
Dc=7.1; 
Dr=6.5;
Ds=674;
Di=10.5;
A=1;
Hm=230;
Ts=37;
Ta=28;
R=(Hm-Di-(Dr*A*(Ts-Ta))-(Dc*A*(Ts-A)))/Ds

% EJERCICIO 2
2a.- 5.67e-8
2b.- 43.6e9
2c.- 1.6e-19
2d.- 1.65e6
2e.- ((4.786e-2)*(9.458e-1)+(5.087e-1)*(0.7079e-2))^(-1/2)

% Ejercicio 3

% Ejercicio 4
function [nr] = flujolaminar(r,v,n,p)
%r=4e-3; v=1.99e-2; n=2.084e-3; p=1.0595e3;
nr=(2*p*v*r)/n;

end

%Ejercicio 5
G=6.67e-11; me=5.9722e24; re=6.38e6;
v0=(2*G*me)/re

%Ejercicio 6
Pm1=((4e-2)*pi); Pm2=((16e-2)*pi); F=850; d1=10; d2=20; c=340;
I1=Pm1/(4*pi*d1^2)
I2=Pm2/(2*pi*d2^2)

IR=2*I1*(1+cos(2*pi)*((d2-d1)*F)/c)

%Ejercicio 7
Vx=360*cosd(70)
Vy=360*sind(70)

%Ejerrcicio 8 
Juan=@(w,h) 0.01*(w^0.025).*(h.^0.75)

%Ejerrcicio 9 
function [] = samish(v,w,ro,c,l,rl)
R=ro+rl
rc=1/(w*c)
z=sqrt((R)^2+(w*l-rc)^2)
I=v/z
phi=atan((w*l-rc)/R)*(180/pi)

end

%EJERCICIO 10
dc=5
a0=690
v1=2.257e8
v2=2.262e8
c=299792.458
d=((2*pi*dc)/a0)*((1/v1)-(1/v2))

%Ejercicio 11
V=1000; e=1.6e-19; h=6.63e-34; m=9.11e-31; lambda=5e-9;
v=h/(m*lambda)

%Ejercicio 12
ro=5.28e-11; e=1.6e-19; m=9.81e-31;Ko=9e9; m2=1.67e-27; G=6.67e-11;
%Para a
Vo=(Ko*e^2)/(m*4*pi^2*ro^3)
%Para b
J=2*pi*Vo*m*(ro^2)
%Para c
ro=J^2/G*m^2*m

%Ejercicio 13
A=10e3; l=0.4; E=0.9e-10;
k=E*A/l

%Ejercicio 14
A=6.45e-4; sigmat=12e7; 
F=A*sigmat

%Ejercicio 15
d=5e2; ro=1.1; miu=1.0; ro1=1.006; R=2.8e-6; phi=6*pi*1.17; g=9.81;
Vt=(4*pi*R^2*(ro-ro1)*g)/3*phi*miu
t=(3*d*phi*miu)/4*pi*R^2*(ro-ro1)*g

%Ejercicio 16
x=log(exp(3))+log10(exp(1)) %3.4343
i=log10(nthroot(81,5)) %0.3817
y=(i^4-(2*i^2)+1)/(i^3-i^5) %13.1116
x1=log(x^2-9)-log(x^2+7*x+12) %-0.5149 + 3.1416i

%Ejercicio 17
N=50; i=1; rint=1e-2; rext=1.5e-2;
le=2*pi*(rext*rint/(rext-rint))
H=N*i/le

%Ejercicio 18
T=473;
p=exp((21.41471-(4861.5)/T)-0.28771*log(T))

%Ejercicio 19

%Ejercicio 21
T=50; D=41;
R=10^((4221/(T+459.4))-(4221/(D+459.4))+2)

%Ejercicio 22
Y=0.073; theta=0; R=1e-3; ro=1000; G=9.81;
gama=ro*G
h=(2*pi*cos(theta)/(ro*G*R))

