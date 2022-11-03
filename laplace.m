function [P] = laplace(k,n,p,q)

a1=1/(sqrt(2*pi*n*p*q));
a2=exp((-(k-n*p)^2)/(2*n*p*q));
P=a1*a2;
end