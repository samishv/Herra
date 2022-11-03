function[total]=ramanujan(n,a)
% Integral de Ramanujan
format long
c1=sqrt(pi)/2; c2=exp(-a^2);
suma=1;
for k=n:-1:1
    if(mod(k,2)==0)
        suma=a+k/suma;
    else
        suma=2*a+k/suma;
    end
end
total=c1-c2/suma
end