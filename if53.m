function if53
% Intercambia los valores de x e y
% si x es mas grande que y
x=input('Introducde un numero en x:');
y=input('Introducde un numero en y:');
if(x>y)
    temp=y; % actua para almacernar un valor para intercambio
    y=x;
    x=temp;
end
x
y
end