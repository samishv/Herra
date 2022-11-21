function [] = modelo1(t,V)
% uN CAPACITOR TIENE... v=vo*exp(-t/(RC))

N=length(t);
mat=[N sum(t); sum(t) sum(t.^2)];
vec = [sum(log(V)); sum(t.*log(V))];

sol=mat\vec

b=exp(sol(1));
v=b*exp(sol(2)*t);
plot(t,V,'*',t,V)


end