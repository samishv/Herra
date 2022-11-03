function [r] = coeficiente1(x,y)
%coeficiente de correlación
M=length(x); % M=length(y);
a1=M*sum(x.*y)-sum(x)*sum(y);
a2=M*sum(x.^2)-sum(x)^2;
a3=M*sum(y.^2)-sum(y)^2;
r=a1/sqrt(a2*a3)
end