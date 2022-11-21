function [y] = if08b(x)
% Prueba de un intervalo
% Esta prueba es incorrecta

if and(0<x,x<10)
    y=4*x;
elseif and(10<x,x<40)
    y=10*x;
else
    y=500
end
y

end