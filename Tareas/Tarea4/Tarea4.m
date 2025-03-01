% ==== TAREA 4 ====

% -> Ejercicio 1
x = 1960:4:2012;
y = [0.54 0.28 1.03 1.69 1.02 1.73 1.36 2.13 0.48 1.25 1.62 1.56 1.60 2.66];

plot(x,y,'*'), grid, axis equal 

% -> Ejercicio 2

x = 0:60:180;
y = [0 0.0034 0.0066 0.0100];
plot(x,y,'*'), grid

% -> Ejercicio 3
% usando ortogonalización encontrar los valores de las variables dada la siguiente ecuación:
% 𝑔𝑜𝑜𝑑𝑝𝑢𝑡=𝛽0+𝛽1𝑣𝑒𝑙𝑜𝑐𝑖𝑑𝑎𝑑+𝛽2𝑝𝑎𝑢𝑠𝑎+𝛽3𝑣𝑒𝑙𝑜𝑐𝑖𝑑𝑎𝑑∗𝑝𝑎𝑢𝑠𝑎+𝛽4𝑣𝑒𝑙𝑜𝑐𝑖𝑑𝑎𝑑2+𝛽5𝑝𝑎𝑢𝑠𝑎2

v = [ones(1,5)*5  ones(1,5)*10  ones(1,5)*20  ones(1,5)*30  ones(1,5)*40];
pausa1 = [10 20 30 40 50]; pausa = [pausa1 pausa1 pausa1 pausa1 pausa1];
goodput = [95.111 94.577 94.734 94.317 94.644 90.800 90.183 91.341 91.321 92.104 72.422 82.089 84.937 87.800 89.941 62.963 76.126 84.855 87.694 90.556 55.298 78.262 84.624 87.078 90.101];

n=length(v);

A = [ones(n,1) v' pausa' (v.*pausa)' (v.^2)' (pausa.^2)'];

mat = A'*A;

vec = A'*goodput';

sol = mat\vec;

b0=sol(1), b1=sol(2), b2=sol(3), b3=sol(4), b4=sol(5), b5=sol(6)

% -> Ejercicio 7

function [] = ejercicio7(x,y)
% 𝑦=𝑎𝑥+𝑏𝑥^2, se sugiere reescribir la ecuación de la forma:
% 𝑦/x=𝑎+𝑏𝑥, aplicando el cambio de variable y = y/x
% x=[-3 -2.8 -2.6 -2.4 -2.2 -2 -1.8 -1.6 -1.4 -1.2 -1 -0.8 -0.6 -0.4 -0.3 -0.2 -0.01 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.2 2.4 2.6 2.8 3]
% y = [29.75 26.44 22.43 21.16 17.69 15.40 13.31 11.56 9.25
% 6.84 5.8 2.88 3.54 0.71 -0.31 1.03 -0.68 -0.72 -0.81 -0.46 -1.43 -0.96 -0.31
% 0.97 2.61 4.77 5.08 5.99 7.45 9.95 2.31] 
n = length(x);
mat = [n          sum(x);
      sum(x)      sum(x.^2)];

vec = [sum(y./x); sum(x.*(y./x))];

sol=mat\vec

a=sol(1); b=sol(2);

x1=linspace(x(1),x(end));
y1=a.*x1+b.*x1.^2;

plot(x,y,'*',x1,y1)

end


% -> Ejercicio 12
function [] = ejercicio12(v,HP)

% v = [5 7 9 11 12]; HP = [290 560 1144 1810 2300]; 

n = length(v);

mat = [n            sum(HP.^3)
       sum(HP.^3)   sum(HP.^6)];
vec = [sum(V);      sum(y.*HP.^3)];
sol = mat\vec

x1 = linspace(x(1),x(end));  %linea ajustada
y1 = sol(1) + sol(2).*x.^3;

plot(v,HP,'*',x1,y1)
end


