function [] = divisor3(num)
divisor1=1; i=1; 

while(divisor1<=num)
    if(mod(num,divisor1)==0)
        divisores(i)=divisor1;
        i=i+1;
    end
    divisor1=divisor1+1; 
end
divisores
end