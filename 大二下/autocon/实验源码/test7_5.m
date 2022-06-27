clear;
clc;

k = 1;

num = [1 1];

den = conv([1 0 0],[0.1 1]);

bode(num,den);



