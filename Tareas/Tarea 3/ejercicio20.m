function[]=ejercicio20(A,B,C)
% A=[1,1]; B=[10,1]; C=[1,6];
x=[A(1),B(1),C(1),A(1)]; y=[A(2),B(2),C(2),A(2)];
line(x,y); axis equal; hold on; axis off; grid;
a=distancia(C(1),C(2),B(1),B(2))
b=distancia(A(1),A(2),B(1),B(2))
c=distancia(C(1),C(2),A(1),A(2))
r=(b+c-a)/2
circulos(A(1)+r,A(2)+r,r,0,2*pi)
end

function[d]=distancia(x1,y1,x2,y2)
d=sqrt((x2-x1)^2+(y2-y1)^2);
end

function[]=circulos(h,k,r,thi,thf)
theta=linspace(thi,thf);
x1=h+r*cos(theta); y1=k+r*sin(theta);
plot(x1,y1,'m')
end