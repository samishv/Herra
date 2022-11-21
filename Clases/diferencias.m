function [] = diferencias(x)
% Repaso algoritmo de diferencias finitas
% x=[0.5774 0.6249 0.6745 0.7265 0.7813 0.8391]
% diferencias1(x)
n=length(x);
A=zeros(n,n);
A(:,1)=x;

for k=1:n-1
    for j=1:n-k
        A(j,k+1)=A(j+1,k)-A(j,k);
    end
end
A
end