function [] = ajuste1(x,y)
% Ajuste lineal

N=length(x);
mat=[N,sum(x);
    sum(x),sum(x.^2)];

vec=[sum(y);sum(x.*y)];

sol=mat\vec;

x1=linspace(x(1),x(end));
y1=sol(2)*x1+sol(1);
plot(x,y,'*',x1,y1)

end