clear;
clc;

num = 0.5;

den = [1 2 1 0.5];

root = roots(den)
figure(1);
nyquist(num,den);

