clear;
clc;


k = 1;

num = k;

den = conv([1 0],conv([0.5 1],[0.1 1]));

[m p w] = bode(num,den);


wi = spline(p,w,-180);

mi = spline(w,m,wi);

kc = 1/mi;

num = kc;

figure(1);
margin(num,den);

figure(2);
rlocus(num,den);
