clear;
clc;

num = 10;
den = [1 2 10];


figure(1)
bode(num,den);



figure(2)

k = 2;
z = [];
p = [0 -1 -2];
[num,den] = zp2tf(z,p,k);
margin(num,den);



