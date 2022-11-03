function if19(year)
% Verifica si un anio es bisiesto
% | or
if(mod(year,400)==0 | mod(year,4)==0 & mod(year,100) & mod(year,100)==0)
    disp('Es anio bisiesto')
end
disp('No es anio bisiesto')

end