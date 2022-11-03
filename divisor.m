function [] = divisor(num)
divisor1=1; cont=0;

while(divisor1<=num)
    if(mod(num,divisor1)==0)
        fprintf('El numero %7d es divisor de %7d \n',divisor1,num)
        cont=cont+1;

    end
    divisor1=divisor1+1; 
end
cont
end