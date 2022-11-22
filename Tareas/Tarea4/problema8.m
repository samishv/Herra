function[]=problema8(d,sigma)
% d=[0.006 0.011 0.017 0.025 0.039 0.060 0.081 0.105]; sigma=[334 276 249 235 216 197 194 182];

n=length(sigma);
A=[ones(n,1),d.^(-1/2)'];
mat=A'*A;
vec=A'*sigma';
sol=mat\vec

x=linspace(d(1),d(end));
%x1=linspace(b(1),b(end));
y1=sol(1)+sol(2).*x.^(-1/2);
plot(d,sigma,'o',x,y1)
end