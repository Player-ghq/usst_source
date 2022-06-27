clear;
clc;


[a,b,c,d] = linmod('test2');

[num,den] = ss2tf(a,b,c,d);

printsys(num,den,'s');