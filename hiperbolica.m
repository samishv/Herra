function [] = linealizacion(x,y)
% Funcion para un modelo hiperbolico
N=length(x);
mat=[N sum(log(x));
    sum(log(x)) sum(log(x.^2))];
vec=[sum(log(y));sum(log(x).*log(y))];
sol=mat\vec;

x1=linspace(x(1),x(end));
y1=
end