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