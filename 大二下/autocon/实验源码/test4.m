clear;
clc;


num(1,:) = 10*conv([1 1],[1 3]);

den(1,:) = conv([1 4],[1 2 2]);

num(2,:) = 1.25*conv([1 1],[1 3]);

den(2,:) = conv([1 0.5],[1 2 2]);

num(3,:) = 5*conv([1 2],[1 3]);

den(3,:) = conv([1 4],[1 2 2]);


figure(3);
hold on;
for i = 1:3
    step(num(i,:),den(i,:))
end

legend('start','s = -0.5','z = -2');

