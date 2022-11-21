function [s] = if17(s)
% Intercambia dos valores de un vector
% if17([7,9])
clc

if(s(1)>s(2))
    [s(1),s(2)]=swap(s(1),s(2));
end
end