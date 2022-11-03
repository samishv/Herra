function [] = orto1(x,y)
% Funcion de ortogonalizaci[on y=bo+b1log(x)
% x=[1:12]; y=[2.11 2.45 2.61 2.73 2.75 2.81 2.87 2.91 2.96 3.03 3.05 3.12]

N=length(x);

A=[ones(N,1), log(x)'];
mat=A'*A;
vec=A'*y';
sol=mat\vec
x1=linspace(x(1),x(end));
y1=sol(1)+sol(2)*log(x1);
plot(x,y,'o',x1,y1)

end