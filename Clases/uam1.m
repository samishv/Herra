function [] = uam1(num)
cont=0;
while(num~=1)
    if(mod(num,2)==0)
        num=num/2; cont=cont+1;
    else
        num=3*num+1; cont=cont+1;
    end
end
cont
end