function[]=problema11(z,T,p,ro)
% z=[0:500:3000];
% T=[288.16 284.91 281.66 278.41 275.16 271.91 268.66];
% p=[101.350 95.480 89.889 84.565 79.500 74.684 70.107];
% ro=[1.2255 1.1677 1.1120 1.0583 1.0067 0.9570 0.9092];

%ajuste de z vs. T
n=length(z);
A=[ones(n,1),z']
mat=A'*A;
vec=A'*T';
sol=mat\vec
x1=linspace(z(1),z(end));
y1=sol(1)+sol(2).*x1;
subplot(2,2,1)
plot(z,T,'o')
title('Polinomio de primer orden')

%ajuste de z vs. p
n=length(z);
B=[ones(n,1),z',(z.^2)']
mat1=B'*B;
vec1=B'*p';
sol1=mat1\vec1
x2=linspace(z(1),z(end));
y2=sol1(1)+sol1(2).*x2+sol1(3).*(x2.^2);
subplot(2,2,2)
plot(z,p,'o')
title('Polinomio de segundo orden')

%ajuste de z vs. ro
n=length(z);
C=[ones(n,1),z',(z.^2)']
mat2=C'*C;
vec2=C'*ro';
sol2=mat2\vec2
x3=linspace(z(1),z(end));
y3=sol2(1)+sol2(2).*x3+sol2(3).*(x3.^2);
subplot(2,2,[3,4])
plot(z,ro,'o')
title('Polinomio de segundo orden 2')
end