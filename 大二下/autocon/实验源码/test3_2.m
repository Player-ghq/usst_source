clear;

clc;


wn = [10 50];


num = wn.^2;

xi = 0.25;


figure(2);
hold on;
for i = 1:length(wn)
    den = [1 2*xi*wn(i) wn(i).^2];
    roots(den)
    
    step(num(i),den,2);

end

legend('wn = 10','wn = 50');


