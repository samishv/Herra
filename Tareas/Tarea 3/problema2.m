function [] = problema2(X1,Y1,X2,Y2,X3,Y3)
% problema2(5,3,6,2,3,-1)
a=[X1,Y1,1; X2,Y2,1; X3,Y3,1];
b=[-(X1^2+Y1^2); -(X2^2+Y2^2); -(X3^2+Y3^2)]

sol=a\b
D=sol(1); 
E=sol(2);
F=sol(3);

hold on 
plot(X1,Y1,'+',X2,Y2,'+',X3,Y3,'+')
r=1/2*sqrt((D)^2+(E)^2-4*F);
h=-D/2; 
k=-E/2;
th=linspace(pi,-pi);
x=h+r*cos(th);
y=k+r*sin(th);
plot(x,y,'g'),axis equal

end