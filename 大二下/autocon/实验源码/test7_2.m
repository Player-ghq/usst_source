clear;
clc;


T1 = 6;
T2 = 3;
k = 1;

num = [T1 1];
den = [T2 1 0 0];

figure(1);

nyquist(num,den);

figure(2);
subplot(2,1,1);

rlocus(num,den);

subplot(2,1,2);
num = [T1 1];
den = [T2 1 T1 1];
step(num,den);

suptitle('T1 = 6, T2 = 3');




% T1 = 2;
% T2 = 5;
% 
% num = [T1 1];
% den = [T2 1 0 0];
% 
% root = roots(den)
% figure(3);
% nyquist(num,den);
% 
% figure(4);
% 
% rlocus(num,den);
