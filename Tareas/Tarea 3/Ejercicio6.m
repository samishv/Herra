function [] = Ejercicio6()
x=linspace(-4,4);
y1=(1./(x-1))+1; y2=1./x

plot(x,y1,'c'), hold on, axis equal
plot(x,y2,'m')
end