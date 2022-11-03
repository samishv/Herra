function[]=ejercicio21(c)
axis equal; hold on; axis off; grid;
a=c/5
b=3*a
d=sqrt((b+a)^2-a^2)
circulos(0,0,c,0,2*pi)
circulos(0,2*a,b,0,2*pi)
circulos(0,-2*a,b,0,2*pi)
circulos(0,0,a,0,2*pi)
circulos(d,a,a,0,2*pi)
end

function[]=circulos(h,k,r,thi,thf)
theta=linspace(thi,thf);
x1=h+r*cos(theta); y1=k+r*sin(theta);
plot(x1,y1,'k')
end