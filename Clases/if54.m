function if54(x)
% Determina si un numero es real infinito o no existe
clc
if isnan(x) % 6/inf, 7/0, 0/150
    disp('No es u8n numero')
elseif isinf(x)
    disp('Numero infinito')
else
    disp('Es un numero de punto flotante')
end
end