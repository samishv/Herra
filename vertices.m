function [angt] = vertices(A,B,C)
% A=[-2,1]; B=[3,4]; C=[5,-2];
% vertices(A,B,C)
mAB=(B(2)-A(2))/(B(1)-A(1));
mBC=(C(2)-B(2))/(C(1)-B(1));
mAC=(C(2)-A(2))/(C(1)-A(1));

m1=mAC; m2=mAB; [angA]=angulo(m1,m2)
m1=mAB; m2=mBC; [angB]=angulo(m1,m2)
m1=mBC; m2=mAC; [angC]=angulo(m1,m2)

angt=atand(angA)+atand(angB)+atand(angC);
end

function [ang] =angulo(m1,m2)
% calcula el ángulo entre dos pendientes
ang=(m2-m1)/(1+m1*m2);
end