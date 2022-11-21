%Problema 1
function [] = Ejercicio1(x1,y1,x2,y2)
a1=x1; b1=y1;
a2=x2; b2=y2;
disp('Las coordenadas del punto medio son:  ')
m=[(x1+x2)/2,(y1+y2)]
x=[a1,a2]; y=[b1,b2];
line(x,y)
grid on 
end

%Problema 2
function [] = problema2(X1,Y1,X2,Y2,X3,Y3)

a=[X1,Y1,1; X2,Y2,1; X3,Y3,1];
b=[-(X1^2+Y1^2); -(X2^2+Y2^2); -(X3^2+Y3^2)]

sol=a\b
D=sol(1); 
E=sol(2);
F=sol(3);

hold on 
plot(X1,Y1,'+',X2,Y2,'+',X3,Y3,'+')
r=1/2*sqrt((D)^2+(E)^2-4*F);
h=-D/2; 
k=-E/2;
th=linspace(pi,-pi);
x=h+r*cos(th);
y=k+r*sin(th);
plot(x,y,'r'),axis equal

end

% Problema 3
function [] = ejercicio3(L1,L2,L3)
%L1=[2,-3,21]; L2=[3,-2,-6];L3=[2,3,9];

mat1=[L1(1) L1(2); L2(1) L2(2)];
vec1=[-L1(3); -L2(3)];
int1=mat1\vec1;

mat2=[L1(1) L1(2); L3(1) L3(2)];
vec2=[-L1(3); -L3(3)];
int2=mat2\vec2;

mat3=[L2(1) L2(2); L3(1) L3(2)];
vec3=[-L2(3); -L3(3)];
int3=mat3\vec3;

x1=[int1(1),int2(1),int3(1),int1(1)];
y1=[int1(2),int2(2),int3(2),int1(2)];
line(x1,y1)

end


%Problema 4
function [] = Ejercicio4()
x=linspace(-2*pi,2*pi);
y=sin(x-sin(x))
plot(x,y,'LineStyle','-')
end

function [] = Ejercicio4A()
x=linspace(-2*pi,2*pi);
y=sin(x-sin(x))
plot(x,y,'LineStyle','-')
axis equal
end

%Ejercicio 5
function [] = Ejercicio5()
x=linspace(-4,4);
y=(1./(2*x.^2))+1
plot(x,y,'LineStyle','-')
end

%Ejercicio 6
function [] = Ejercicio6()
x=linspace(-4,4);
y1=(1./x-1)+1; y2=1./x
hold on
plot(x,y1,'LineStyle','-')
plot(x,y2,'LineStyle','-','c')
end

%Problema 7
x=0:0.1:7;
y1=1./x;
y2=sin(x)./x;
y3=-1./x;
plot(x,y1,x,y2,x,y3)
%plot(x,y2)
%plot(x,y3)
ylim([-2,2]);

%Problema 8

miu=[0 0 0 3]; sigma=[2 1 0.5 0.75];
problem8=@(miu,sigma) (1./sigma.*(sqrt(2.*pi))).*(exp((-(x-miu).^2)./(2.*sigma.^2)))
y=problem8(miu,sigma)

%Problema 9

x=-4:0.01:4;
y1=exp(-x.^2); y2=exp(-abs(x))
plot(x,y1,x,y2)
ylim([0,1.2]);

%Problema 10

x=linspace(-3,3);
y1=(1/3).^x; y2=3.^x
plot(x,y1,x,y2,0,1,'o')
ylim([0,5]);

%Problema 11

function[]=problema11(Pd)
%Pd=[13;2]
theta=23
Tr=[cosd(theta) -sind(theta); sind(theta) cosd(theta)];
Pr=Pd.*Tr
end

%Problema 12
x=linspace(0.1,3);
y=exp(x); y1=exp(x); y2=exp(x);
plot(x,y)
ylim([-5,5])
subplot(3,1,1)

plot(x,y1)
ylim([-5,5])
subplot(3,1,2)

plot(x,y2)
ylim([-5,5])
subplot(3,1,3)

gtext('e^x')
gtext('primera derivada')
gtext('segunda derivada')

% Problema 13
axis([0 5 0 5])
t=linspace(0,5);
k=[0.5 2 3 4 1];
A=4; B=-1/3;
y=A./(1-(exp(-k.*t')./B));
plot(t,y)

%Problema 14
function[]=problema14(a1,a2)
%a1=-0.1; a2=2;
x1=linspace(-10,a1)
x2=linspace(a1,a2)
x3=linspace(a2,6)
y1=-x1;
y2=1+5.25.*x2-sec(0.68.*x2);
y3=-4.*x3./x3;
plot(x1,y1,x2,y2,x3,y3)
ylim([-5,10])
end

%Problema 15
function[]=problema15(ro,miu)
x=linspace(0,5)
p=(1./(ro.*sqrt(2.*pi))).*exp((-(x-miu).^2)./(2.*ro.^2));
g=1./(pi.*(1+x.^2));
plot(x,p,x,g)
end

%Problema 16
beta=[2,1,1.5]; theta=[3,4,3.5];
x=linspace(0,20);
curva1=@(beta,theta) (beta(1)./theta(1)).*((x./theta(1)).^(beta(1) ...
    -1)).*exp((-x./theta(1)).^beta(1))
curva2=@(beta,theta) (beta(2)./theta(2)).*((x./theta(2)).^(beta(2) ...
    -1)).*exp((-x./theta(2)).^beta(2))
curva3=@(beta,theta) (beta(3)./theta(3)).*((x./theta(3)).^(beta(3) ...
    -1)).*exp((-x./theta(3)).^beta(3))
y1=curva1(beta,theta); y2=curva2(beta,theta); y3=curva3(beta,theta);
plot(x,y1,x,y2,x,y3)

% Problema 17
theta=linspace(-2,2);
Ax=(9/2.*cos(theta))-3.*sin(theta);
Ay=-4/5.*theta+(3.*cos(theta));
A=sqrt((Ax.^2)+Ay.^2);
B=15/2.*cos(theta);
plot(theta,A),hold on
plot(theta,B)

% Problema 18
theta=linspace(0,90)
phi=atand((24.*sind(theta)-6)./(24.*cosd(theta)+9));
By=3600+3600.*sind(phi);
Bx=3600.*cosd(phi);
W=9600-7176.*cosd(theta);
T=(Bx.*sind(theta)-By.*cosd(theta)-300.*cosd(theta))./sind(theta-phi);
plot(theta,T,'r',theta,W,'g')

% Problema 19


%Problema 25

x1=0; y1=0;
x2=2; y2=0;
x3=2; y3=2*tan(60);
x4=0; y4=2*tan(60);


x=[x1,x2,x3,x4]
y=[y1,y2,y3,y4]

line(x,y)