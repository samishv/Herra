for k=1:5;
    a(k)=k^2
end

% continue salta 1 paso
for i=1:10
    if(i==6),continue,end
    disp(i)
end

clear,clc

for i=1:20
    if(isprime(i)),continue,end
    disp(i)
end

clear,clc

%break
for j=1:10
    if(j==6),break,end
    disp(j)
end

clear,clc
mod(51,17)

% encuentra n al cubo

n=('Introduce el numero')


n=10; suma=
for x=n:-1:1
suma=suma+1/suma

function[total]=ramanujan(n,a)
% Integral de Ramanujan
format long
c1=sqrt(pi); c2=exp(-a^2);
suma=1;
for k=n:-1:1
    if(mod(k,2)==0)
        suma=a+k/suma;
    else
        suma=2*a+k/suma;
    end
end
total=c1-c2/suma
end


