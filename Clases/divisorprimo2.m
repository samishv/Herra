function [] = divisorprimo2(num)
% Descomposición de un número en sus factores primos

inicial = num;
i=1; c=0;
vec = primes(num);

while(c ~= 1)
    c=num/vec(i);
    if mod(num,vec(i)) == 0
        fprintf('%4i es divisor primo de %9i \n',vec(i),inicial)
        num=c;
    else
        i=i+1;
    end
end

end