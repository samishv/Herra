function [] = orto2(t,y)
% t=0:0.1:1; y=[2 1.7 1.5 1.3 1.1 1 0.85 0.7 0.65 0.6 0.5];

A=[exp(-t)' exp(-2*t)'];
mat=A'*A;
vec=A'*y';
sol=mat\vec;
x1=linspace(t(1),t(end));
y1=sol(1)*exp(-x1)+sol(2).*exp(-2*x1);
plot(t,y,'o',x1,y1)
end