function [cont] = busqueda1(A)
% CAMBIA EL PRIMO POR EL NUMERO 1
[f,c]=size(A);

for i=1:f
    for j=1:c
        if(isprime(A(i,j)))
            A(i,j)=1;
        end
    end
end

end