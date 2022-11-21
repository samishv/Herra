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