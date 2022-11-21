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