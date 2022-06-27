clear;
clc;

k = 1;
z = [-3];
p = [0 -2];

[num den] = zp2tf(z,p,k);

rlocus(num,den);