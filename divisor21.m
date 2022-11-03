function [cont] = divisor21(num)
divisor1=1; cont=0;

while(divisor1<=num)
    if(mod(num,divisor1)==0)
        cont=cont+1;

    end
    divisor1=divisor1+1; 
end

end