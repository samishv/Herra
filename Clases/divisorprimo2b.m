function [] = divisorprimo2b(num)
% Descomposición de un número en sus factores primos

inicial = num;
i=1; c=0; j=1;
vec = primes(num);

while(c ~= 1)
    c=num/vec(i);
    if mod(num,vec(i)) == 0
        a(j)=vec(i);
        num=c;
        j=j+1;
    else
        i=i+1;
    end
end
a
end