clear;
clc;


num = [1 5 5];

den = conv(conv([1 0],[1 1]),[1 2 2]);


figure(1);
pzmap(num,den);

figure(2);
step(tf(num,den))

