% ==== TAREA 2 ====

% ---- Ejercicio 1 ----

A=[1 4 1; 2 -1 0; 0 18 4];
B=[2 0 1 3 2; -2 1 3 2 -1; 1 0 -1 2 3; 3 -1 2 4 -3; 1 1 3 2 0];
C=[0 2 -1; 3 -2 1; 3 2 -1];

det(A)
det(B)
det(C)

% ---- Ejercicio 2 ----

inv(A)
inv(B)
inv(C)

% ---- Ejercicio 3 ----

theta=acos(dot(u,v)/(norm(u)*norm(v)))

% ---- Ejercicio 4 ----

A=[0.8 0.2 -0.6 0.1; -1.2 0.6 0.6 0; 0.7 -0.3 0.1 0; 0.2 -0.3 0.6 0];
B=[1/2 3/2 2; 2/3 -1/3 0; 1 1 1];
det(A)
det(A')
det(B)
det(B')

% ---- Ejercicio 5 ----

u= [3 2 -1 4]; v= [1 -1 1 0];
dot(u,v)
% si son ortogonales

% ---- Ejercicio 6 ----

A=[-1 0 5; 2 4 -7; 3 2 6];
B=[6 1 4; 3 0 2; 2 4 6];
C=[0 4 6; 1 3 5; 0 2 7];

(inv(B)*C')+(A^2)

% ---- Ejercicio 8 ----

function [] = matriz8(a)

% inciso a
c=a(:,1)

s=size(a);
e=zeros(s(1),1);
e(1,1)=1

% inciso b
norma2c=norm(c)

%inciso c
v=c+norma2c*e

% inciso d
incisod=v'*v
incisodb=v*v'

% inciso e
h=eye(s(1))-(2*incisodb)/incisod

% inciso f
R=h*a

end

% ---- Ejercicio 8b ----
a=1:300;
a(2:2:300)=[]
c=a(find(mod(a,3)==0))
....



% ---- Ejercicio 9 ----

A=[1 -1; -1 1];
A1=blkdiag(A,zeros(2));
B1=blkdiag([0],A,[0]);
C1=blkdiag(zeros(2),A);

k1=(320e9*10e-4)*A1/5;
k2=(180e9*8e-4)*B1/4;
k2=(150e9*5e-4)*C1/3;

M=k1+k2+k3;

% ---- Ejercicio 10 ----

u=[-1 3]; v= [4 4];
proy=(dot(u,v)/dot(v,v))*v

% ---- Ejercicio 11 ----

A=[-1 3 2; 0 -2 1; 1 0 -2];
adjoint(A)

% ---- Ejercicio 12 ----

A=[-1 2 0 1; 3 -1 4 1; 0 0 1 2; -1 1 1 2]
invA=adjoint(A)/det(A)

% ---- Ejercicio 13 ----

punto1=[3 -1 1]; punto2=[4 -4 4]; punto3=[1 1 1]; punto4=[0 0 1];
A=[punto1 1; punto2 1; punto3 1; punto4 1]
vol=abs(det(A))
%12

% ---- Ejercicio 14 ----
A=[1 3 3; 1 4 3; 1 3 4]; B=[1 2 3; 1 3 3; 2 4 3]
inv(A*B)
inv(B)*inv(A)

% ---- Ejercicio 15 ----

A=[1 2 -3; 0 1 2];
A'
A'*A
A*A'

% --- Ejercicio 16 ----

A=[0 0 0 7 0 0 0; 0 0 7 7 0 0 0; 0 7 7 7 7 7 7 ];
A1=[7 7 7 7 7 7 7];
A3=A(end:-1:1,1:end);
A2=[A;A1;A3]
B=A2(1:end,end:-1:1)

% --- Ejercicio 17 ----

v1=[2 3 2 -2]; v2=[1 0 0 1]; v3= [-1 0 2 1]; v4=[-1 2 -1 1];
dot(v1,v2)
dot(v1,v3)
dot(v1,v4)
dot(v2,v3)
dot(v2,v4)
dot(v3,v4)

% ---- Ejercicio 18 ----

u=[1 -2 1]; v=[3 1 -2];
cross(u,v)
cross(v,u)
cross(v,v)
ans =

     3     5     7


ans =

    -3    -5    -7


ans =

     0     0     0


% --- Ejercicio 19 ---

u=[1 -4 1]; v=[0 2 3];
vuo=cross(u,v)/(norm(cross(u,v)))

% --- Ejercicio 20 ---

u=[-3 4 1]; v=[0 -2 6]
A=norm(cross(u,v))

% --- Ejercicio 21 ---

v1=[3/sqrt(11) 1/sqrt(11) 1/sqrt(11)];
v2=[-1/sqrt(6) 2/sqrt(6) 1/sqrt(6)];
v3=[-1/sqrt(66) -4/sqrt(66) 7/sqrt(66)];
norm(v1)
norm(v2)
norm(v3)
dot(v1,v2)
dot(v1,v3)
dot(v2,v3)
