% 8. num de 3 cifras que al ser divididos por la suma de sus digitos da 26

for num=100:999
    c=mod(num,10);
    a=fix(num/100);
    b=fix(mod(num,100)/10);

    if(num/(a+b+c)==26)
        fprintf('El numero %5d cumple la condicion \n', num)
    end
end

% opcion dos

for a=1:9
    for b=0:9
        for c=0:9
            numero=a*1e2+b*1e1+c;
            if(num/(a+b+c)==26)
                fprintf('El numero %5d cumple la condicion \n', num)
            end
        end
    end
end