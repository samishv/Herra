for num=10000:99999
    e=mod(num,10);
    d=fix(mod(num,100)/10);
    c=fix(mod(num,1000)/100);
    b=fix(mod(num,10000)/1000);
    a=fix(num/10000);

    if(num==(a^5+b^5+c^5+d^5+e^5))
        fprintf('El numero %5d cumple la condicion \n', num)
    end
end