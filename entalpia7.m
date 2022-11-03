%entalpia7.m
disp('eSTE PROGRASMA CALCULA LA ENTALPIA DEL nAOH DISUELTO EN AGUA')
disp('Elija el rango de temperatura bntre comillas')
disp('T<=50             opcion A')
disp('T<=100 & T>50      opcion B')
disp('T<=150 & T>100     opcion C')
disp('T<=200 & t>150     opcion D')
disp('T<=300 & T>200     opcion E')
disp('T>3000             opcion F')

T=input('Introduce la temperatura en grados Farenheit ');
m=input('Introduce la fraccion de masa del NaOH ');

opcion=input('opcion = ');
error=0;
switch (opcion)
    case 'A'
        n1=1; x(1)=40; y1=fdos(n1,m), n1=2; x(2)=50; y2=fdos(n1,m);
    case 'B'
        n1=2; x(1)=50; y1=fdos(n1,m), n1=3; x(2)=100; y2=fdos(n1,m);
    case 'C'
        n1=3; x(1)=100; y1=fdos(n1,m), n1=4; x(2)=150; y2=fdos(n1,m);
    case 'D'
        n1=4; x(1)=150; y1=fdos(n1,m), n1=5; x(2)=200; y2=fdos(n1,m);
    case 'E'
        n1=5; x(1)=200; y1=fdos(n1,m), n1=6; x(2)=300; y2=fdos(n1,m);
    case 'F'
        n1=6; x(1)=300; y1=fdos(n1,m), n1=7; x(2)=400; y2=fdos(n1,m);
    otherwise
        disp('La seleccion no es valida')
        error=1;
end
