clear;
clc;

% 
% v = 1;
% 
% k = [1 6 7];
% 
% den = conv([1 0],conv([1 1],[1 2]));
% figure(1);
% for i=1:3
%    subplot(1,3,i)
%    num = k(i);
%    
%    nyquist(num,den);
% 
% end
% 
% figure(2);
% for i=1:3
%    subplot(1,3,i)
%    num = k(i);
% 
%    step(num,den);
% 
% end




k = 1;


figure(3);
num = k;

den1 = conv([1 1],[1 2]);
den2 = conv([1 0],conv([1 1],[1 2]));
den3 = conv([1 0 0],conv([1 1],[1 2]));

subplot(1,3,1);
nyquist(num,den1);

subplot(1,3,2);
nyquist(num,den2);

subplot(1,3,3);
nyquist(num,den3);

figure(4);
subplot(1,3,1);
step(num,den1);
subplot(1,3,2);
step(num,den2);
subplot(1,3,3);
step(num,den3);

