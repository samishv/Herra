function [] = ajuste5
% Ajuste la curva y=a+bx^2+ce^(-x) por minc
% x=[0 0.25 1 2 3 4 5 6 7 8]; y=[7.5 5.3 5.6 11.9 21 40 64 90 125 155];

format
dat=load('dat3.txt');
N=length(dat);
x=dat(1,:);
y=dat(2,:);


mat=[N  sum(x.^2)   sum(exp(-x));
    sum(x.^2) sum(x.^4) sum(exp(-x).*x.^2);
    sum(exp(-x)) sum(exp(-x).*x.^2)];

vec=[sum(y);sum(y.*x.^2); sum(y.*exp(-x))]
sol=mat\vec;
A=sol(1);
B=sol(2);
C=sol(3);

x1=linspace(x(1),x(end));
y1=A+B.*x1.^2+C.*exp(-x1);
plot(x,y,'+b',x1,y1)

end