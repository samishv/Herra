function[]=ejercicio19mk2()
x=[-40,40,40,-40,-40]; y=[40,40,-40,-40,40];
line(x,y); axis equal; hold on; axis off; grid;
circulos(-40,0,40,-pi/2,pi/2)
circulos(40,0,40,pi/2,3*pi/2)
circulos(0,30,10,0,2*pi)
end

function[]=circulos(h,k,r,thi,thf)
theta=linspace(thi,thf);
x1=h+r*cos(theta); y1=k+r*sin(theta);
plot(x1,y1,'g')
end