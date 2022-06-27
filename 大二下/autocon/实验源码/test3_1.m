clear;

clc;

wn = 10;


num = wn^2;

xi = [0 0.25 0.7 1 1.2];



for i = 1:length(xi)
    den = [1 2*xi(i)*wn wn^2];
    figure(1);
    hold on;
    pzmap(tf(num,den));
    root = roots(den);
    hold off;
    figure(2);
    hold on;
    step(num,den,2);
    hold off;

end

legend('xi = 0','xi = 0.25','xi = 0.7','xi = 1','xi = 1.2');







% step(num,den,2)


