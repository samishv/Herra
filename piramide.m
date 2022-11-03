function [] = piramide(f,c)
% Piramide de unos
A=zeros(f,c); k=1;

for i=f:-1:1
    for j=k:c-k+1
        A(i,j)=1;
    end
    k=k+1;

end
A
end