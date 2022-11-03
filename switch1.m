function [] = switch1(color)
% Uso b[asico de estructura switch
% La opcion de color debe escribirse entre comillas
switch(color)
    case('verde')
        disp('Es seguro pasar')
    case 'rojo'
        disp('Alto total')
    case 'amarillo'
        disp('Proceda con preucación')
    otherwise          % else
        disp('Semaforo fuera de servicio')
end
end