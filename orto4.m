function [] = orto4(x,y)
% x=[-0.5 -0.19 0.02 0.2 0.35 0.5];
% y=[-3.558 -2.874 -1.995 -1.040 -

A=[(sin(pi*x/2))' (cos(pi*x/2))'];
mat=A'*A;
vec=A'*y';
sol=mat\vec
x1=linspace(x(1),x(end));
y1=sol(1).*(sin(pi*x1/2))+sol(2).*(cos(pi*x1/2));
plot(x,y,'o',x1,y1)

end