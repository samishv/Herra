function [] = ejercicio23(A,B,C)
% A=[2,4]; B=[28,7.5]; C=[7,16];
x=[A(1),B(1),C(1),A(1)]; y=[A(2),B(2),C(2),A(2)]
line(x,y), axis equal; hold on; axis off; grid;
r=1
px1=((A(1)+r*B(1))/(1+r))
py1=((A(2)+r*B(2))/(1+r))
px2=((B(1)+r*C(1))/(1+r))
py2=((B(2)+r*C(2))/(1+r))
px3=((C(1)+r*A(1))/(1+r))
py3=((C(2)+r*A(2))/(1+r))
x1=[px1,px2,px3,px1]; y1=[py1, py2, py3, py1];
line(x1,y1)
end