function [r] = turbina(nr,t31,nic,nit,a,k)
% turbina(0.7,3,0.87,0.92,4,1.13)
r1=nit*t31*(1-a^((1-k)/k));
r2=(1/nic)*(a^((k-1)/k)-1);
r=(r1-r2)/(t31-1-r2-nr*(t31-1-r1-r2));

end