% Graficas 3D

t=0.01:0.01:20*pi;
x=cos(t);
y=sin(t);
z=t.^3;
plot3(x,y,z), grid

clear,clf
% plano en 3d 2x-3y+z=1
x=-1:0.1:1;
y=x;
[X,Y]