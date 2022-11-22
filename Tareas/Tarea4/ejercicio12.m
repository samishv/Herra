function [] = ejercicio12(HP,v)

% v = [5 7 9 11 12]; HP = [290 560 1144 1810 2300]; 

n = length(v);

mat = [n            sum(HP.^3);
       sum(HP.^3)   sum(HP.^6)];
vec = [sum(v);      sum(v.*HP.^3)];
sol = mat\vec

x1 = linspace(HP(1),HP(end));  %linea ajustada
y1 = sol(1) + sol(2).*x1.^3;

plot(HP,v,'*',x1,y1), grid

end