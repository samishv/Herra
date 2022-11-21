%hallar a+b ab 12 y (ab)^2 33
for num=10:99
    [cont1]=divisor21(num);
    [cont2]=divisor21(num^2);
    if(cont1==12 && cont2==33)
        a=mod(num/10);
        b=mod(num,10);
        sol=a+b
    end
end