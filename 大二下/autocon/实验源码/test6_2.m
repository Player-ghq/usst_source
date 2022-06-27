clear;

clc;


k = 1;
z =[];
p = [0 -1 -2];


[num den] = zp2tf(z,p,k);


pzmap(num,den);

rlocus(num,den);



