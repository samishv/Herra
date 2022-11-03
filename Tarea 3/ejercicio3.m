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