function[]=problema14(a1,a2)
%a1=-0.1; a2=2;
x1=linspace(-10,a1)
x2=linspace(a1,a2)
x3=linspace(a2,6)
y1=-x1;
y2=1+5.25.*x2-sec(0.68.*x2);
y3=-4.*x3./x3;
plot(x1,y1,x2,y2,x3,y3)
ylim([-5,10])
end