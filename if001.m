function [maximo] = if001(x,y)
% Intercambio de valores
% if001(7,2)

if(x>y) % si se cumple esta funci[on se ejecuta los comandos
    temp=y; % temp=2
    y=x;    % y=7
    x=temp; % x=2
end
disp('El mayor es')
disp(y)
maximo=y;
end