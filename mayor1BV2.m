function [maximo] = mayor1BV2(a,b,c)
% Encuentra el mayor de tres valores

maximo=a;
if(b>maximo)
    maximo=b;
end

if(c>maximo)
    maximo=c;
end

end