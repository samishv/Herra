%Problema 1
function[]=problema1(x,y)
% y=[0.54,0.28,1.03,1.69,1.02,1.73,1.36,2.13,0.48,1.25,1.62,1.56,1.60,2.66];
% x=[1960:4:2012];
n=length(y);
mat=[n,sum(x),sum(x.^2),sum(x.^3),sum(x.^4);
     sum(x),sum(x.^2),sum(x.^3),sum(x.^4),sum(x.^5);
     sum(x.^2),sum(x.^3),sum(x.^4),sum(x.^5),sum(x.^6);
     sum(x.^3),sum(x.^4),sum(x.^5),sum(x.^6),sum(x.^7);
     sum(x.^4),sum(x.^5),sum(x.^6),sum(x.^7),sum(x.^8)]
vec=[sum(y);sum(x.*y);sum(x.^2.*y);sum(x.^3.*y);sum(x.^4.*y)]
sol=mat\vec
A=sol(1);
B=sol(2);
C=sol(3);
D=sol(4);
E=sol(5);
x1=linspace(x(1),x(end));
y1=(E.*x1.^4+D.*x1.^3+C.*x1.^2+B.*x1+A);
plot(x,y,'o'),grid, axis equal
end

%Problema 2
function[]=problema2(x,y)
% x=[0,0.0034,0.0066,0.0100]; y=[0:60:180];
n=length(y);
mat=[n,sum(x);
     sum(x),sum(x.^2)]
vec=[sum(y);sum(x.*y)]
sol=mat\vec
x1=linspace(x(1),x(end));
y1=sol(2)*x1+sol(1);
plot(x,y,'o',x1,y1)
end

%Problema 3
function [] = Ejercicio3(v,p,g)
% v=[5 5 5 5 5 10 10 10 10 10 20 20 20 20 20 30 30 30 30 30 40 40 40 40 40];
%p=[10 20 30 40 50 10 20 30 40 50 10 20 30 40 50 10 20 30 40 50];
%g=[95.111 94.577 94.734 94.317 94.644 90.800 90.183 91.341 91.321 92.104 72.422 82.089 84.937 87.800 89.941 62.963 76.126 84.855 87.694];
%ortogonalización
n=length(v);
A=[ones(n,1),v',p',(v.*p)',v.^2',p.^2'];
mat=A'*A;
vec=A'*g'; %porque por g?
sol=mat\vec 
X1=linspace(v(1),v(end)); 
X2=linspace(p(1),p(end));
Y1=sol(1)+sol(2).*X1+sol(3).*X2+sol(4).*(X1.*X2)+sol(5).*X1.^2+sol(6).*(X2.^2);
end

%Problema 4
function [] = Ejercicio4(x1,x2,y)
%x1=[0.1 0.2 0.6 1.4 2.0 2.0 2.1 2.1 2.8 3.6 4.2 4.5 4.7 5.3 6.1 6.8 7.5 8.2 8.5 9.4];
%x2=[0.3 0.2 1.4 3.4 5.2 5.5 5.5 5.3 7.4 9.4 10.3 11.4 11.3 13.6 15.3 17.4 18.5 20.4 21.3 23.3];
%y=[3.6 0.3 6.0 10.6 8.4 11.8 12.7 6.8 9.9 16.7 16.3 19.9 20.2 22.9 26.6 28.1 31.0 28.8 32.4 35.0];
%(ortogonalización Y1 gráfica)

N=length(x1);

A=[ones(N,1), x1'];
B=[ones(N,1), x2'];
C=[ones(N,1), x1',x2'];

mat1=A'*A;
mat2=B'*B;
mat3=C'*C;

vecA=A'*y';
vecB=B'*y';
vecC=C'*y';

sol1=mat1\vecA
sol2=mat2\vecB
sol3=mat3\vecC

X1=linspace(x1(1),x1(end)); 
X2=linspace(x2(1),x2(end)); 

plot(x1,x2,'*',X1,X2), grid
end

%Problema 5
function[]=problema5(n,o,e)
% n=[0.03 0.03 0.05 0.05 0.013 0.007 0.007 0.014 0.0038];
% o=[0.18 0.25 0.35 0.40 0.10 0.15 0.11 0.14 0.143];
% e=[24 20 18 15 27 28 24 27 30];

N=length(o);

A=[ones(N,1),o',n',(o.*n)'];
mat=A'*A;
vec=A'*e';
sol=mat\vec

x=linspace(n(1),n(end));
x1=linspace(o(1),o(end));
y1=sol(1)+sol(2).*x1+sol(3).*x+sol(4).*x1.*x;
end

%Problema 6
function[]=problema6(q,a,b)
% q=[17.6 23.8 5.7 3.0 7.5 89.2 60.9 27.5 13.2 12.2];
% a=[8.4 31.6 5.7 1.0 3.3 41.1 26.2 16.4 6.7 9.7];
% b=[0.0048 0.0073 0.0037 0.0412 0.0416 0.0063 0.0061 0.0036 0.0039 0.0025];

n=length(q);
A=[ones(n,1),log(a)',log(b)'];
mat=A'*A;
vec=A'*q';
sol=mat\vec

x=linspace(a(1),a(end));
x1=linspace(b(1),b(end));
y1=sol(1)+sol(2).*log(x)+sol(3).*log(x1);
end

%Problema 7
function[]=problema7(x,y)
% x=[-3.0 -2.8 -2.6 -2.4 -2.2 -2.0 -1.8 -1.6 -1.4 -1.2 -1.0 -0.8 -0.6 -0.4 -0.2 -0.01 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0];
% y=[29.75 26.44 22.43 21.16 17.69 15.40 13.31 11.56 9.25 6.84 5.80 2.88 3.54 0.71 -0.31 1.03 -0.68 -0.72 -0.81 -0.46 -1.43 -0.96 -0.31 0.97 2.61 4.77 5.08 5.99 7.45 9.95 2.31];

n=length(x);
A=[n,sum(x);
    sum(x),sum(x.^2)];

vec=[sum(y./x);sum(x.*(y./x))];

sol=A\vec

x1=linspace(x(1),x(end));
y1=sol(1).*x1+sol(2).*(x1.^2);  %como escribir la ecuacion cuadratica para que se ajuste a la curva?
plot(x,y,'*',x1,y1), grid
end

%Problema 8
function[]=problema8(d,sigma)
% d=[0.006 0.011 0.017 0.025 0.039 0.060 0.081 0.105]; ro=[334 276 249 235 216 197 194 182];

n=length(sigma);
A=[ones(n,1),d.^(-1/2)'];
mat=A'*A;
vec=A'*sigma';
sol=mat\vec

x=linspace(d(1),d(end));
%x1=linspace(b(1),b(end));
y1=sol(1)+sol(2).*x.^(-1/2);
plot(d,sigma,'o',x,y1)
end

%Problema 9
function [] = ejercicio9(x,y)
% determinar los coeficientes m y b
% x=[1 3 5 7 10]; y=[2.2 5 5.5 6.1 6.6];

n = length(x);
mat = [n          sum(1./x);
      sum(1./x)      sum((1./x).^2)];

vec = [sum(1./y); sum((1./x).*(1./y))];

sol=mat\vec

m=1/sol(1)
b=sol(2)*m

x1 = linspace(x(1),x(end));  %linea ajustada
y1 = m.*x1./(b+x1);

plot(x,y,'*',x1,y1)



end

%Problema 10
function[]=problema10(x,y)
%x=[0:1:6]; y=[1.23 4.11 5.17 3.19 2.23 3.29 4.13];

n=length(y);
mat=[  n,        sum(x),       sum(x.^2),     sum(x.^3);
     sum(x),     sum(x.^2),    sum(x.^3),     sum(x.^4);
     sum(x.^2),  sum(x.^3),    sum(x.^4),     sum(x.^5);
     sum(x.^3),  sum(x.^4),    sum(x.^5),     sum(x.^6)];
     
vec=[sum(y);sum(x.*y);sum(x.^2.*y);sum(x.^3.*y)];

sol=mat\vec;

x1=linspace(x(1),x(end));
y1=(sol(4).*x1.^3+sol(3).*x1.^2+sol(2).*x1+sol(1));
plot(x,y,'o',x1,y1),grid
end

%Problema 11
function[]=problema11(z,T,p,ro)
% z=[0:500:3000];
% T=[288.16 284.91 281.66 278.41 275.16 271.91 268.66];
% p=[101.350 95.480 89.889 84.565 79.500 74.684 70.107];
% ro=[1.2255 1.1677 1.1120 1.0583 1.0067 0.9570 0.9092];

%ajuste de z vs. T
n=length(z);
A=[ones(n,1),z']
mat=A'*A;
vec=A'*T';
sol=mat\vec
x1=linspace(z(1),z(end));
y1=sol(1)+sol(2).*x1;
subplot(2,2,1)
plot(z,T,'o')
title('Polinomio de primer orden')

%ajuste de z vs. p
n=length(z);
B=[ones(n,1),z',(z.^2)']
mat1=B'*B;
vec1=B'*p';
sol1=mat1\vec1
x2=linspace(z(1),z(end));
y2=sol1(1)+sol1(2).*x2+sol1(3).*(x2.^2);
subplot(2,2,2)
plot(z,p,'o')
title('Polinomio de segundo orden')

%ajuste de z vs. ro
n=length(z);
C=[ones(n,1),z',(z.^2)']
mat2=C'*C;
vec2=C'*ro';
sol2=mat2\vec2
x3=linspace(z(1),z(end));
y3=sol2(1)+sol2(2).*x3+sol2(3).*(x3.^2);
subplot(2,2,[3,4])
plot(z,ro,'o')
title('Polinomio de segundo orden 2')
end

% Ejercicio 12
function [] = ejercicio12(HP,v)

% v = [5 7 9 11 12]; HP = [290 560 1144 1810 2300]; 

n = length(v);

mat = [n            sum(HP.^3);
       sum(HP.^3)   sum(HP.^6)];
vec = [sum(v);      sum(v.*HP.^3)];
sol = mat\vec

x1 = linspace(HP(1),HP(end));  %linea ajustada
y1 = sol(1) + sol(2).*x1.^3;

plot(HP,v,'*',x1,y1), grid

end