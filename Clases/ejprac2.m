function [delta] = ejprac2(hf,Hv0,Hv1,Hv2,Hv3,hv0,hv1,hv2,hv3,mf,xf,xp)
% hf=28.08; Hv0=1164.19; Hv1=1154.60; Hv2= 1138.99; Hv3=1108.83;
% hv0=218.84; hv1=191.64; hv2=150.69; hv3=77.62; mf=4500; xf=0.13; xp=0.55;

format long

mat=[Hv0-hv0            hv1-Hv1            0       
        0           Hv1+hv2-2*hv1       hv2-Hv2
        0               Hv3-hv2     Hv3-Hv2-2*hv2];
vec=[mf*(hv3-hf); mf*(hv2-hv1); mf*(Hv3-hv2+xf*(hv3-Hv3)/xp)];

sol=mat\vec;
mv0=sol(1)
mv1=sol(2)
mv2=sol(3)
end