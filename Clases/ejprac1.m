function [delta] = ejprac1(Pc,di,dc,d0,miu0,miui,E0,Ei)
% Pc=3000; di=0; dc=6; d0=12; miu0=2022640188e-10; miui=miu0; E0=15e6;
% Ei=30e6;
delta=Pc*dc*((dc^2+di^2)/(Ei*(dc^2-di^2))+(dc^2+d0^2)/(E0*(d0^2-dc^2))-miui/Ei+miu0/E0)
end