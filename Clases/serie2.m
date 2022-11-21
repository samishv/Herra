function [] = serie2(n)
suma=n+1;
for k=n:-1:1
    k
    suma=(k-1)+k/suma
end
suma
end