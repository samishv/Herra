function [] = samish(v,w,ro,c,l,rl)
R=ro+rl
rc=1/(w*c)
z=sqrt((R)^2+(w*l-rc)^2)
I=v/z
phi=atan((w*l-rc)/R)*(180/pi)

end