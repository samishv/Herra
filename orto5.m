function [] = orto5(x,y)
% Funcion de ortogonalizacion 
% x=[0 0.25 1 2 3 4 5 6 7 8]; y=[7.5 5.3 5.6 11.9 21 40 64 90 125 155];

N=length(x);

A=[ones(N,1), (x.^2)' exp(-x)'];
mat=A'*A;
vec=A'*y';
sol=mat\vec
x1=linspace(x(1),x(end));
y1=sol(1)+sol(2).*x1.^2+sol(3).*exp(-x1);
plot(x,y,'o',x1,y1)

end