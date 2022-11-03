function[]=problema15(ro,miu)
x=linspace(0,5)
p=(1./(ro.*sqrt(2.*pi))).*exp((-(x-miu).^2)./(2.*ro.^2));
g=1./(pi.*(1+x.^2));
plot(x,p,x,g)
end