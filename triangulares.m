c=fix(100*rand(10))
a=triu(c,1);
sumA=sum(a)
sumA2=sum(sumA)
b=tril(c,-1)
sumB=sum(b)
sumB2=sum(sumB)
if sumA2>sumB2
    disp('La suma de la matriz triangular superior es mayor')
elseif sumB2>sumA2
    disp('La suma de la matriz triangular inferior es mayor')
else sumA2==sumB2
    disp('La suma de la matriz triangular superior es igual a la inferior')

end