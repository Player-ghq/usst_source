

x1 = yout(:,1);
x2 = yout(:,2);
x3 = yout(:,3);
t = tout;

figure(1);

subplot(1,3,1);

plot(t,x1,'c');
xlabel('t');
ylabel('x1(t)');
legend('x2(t)');


subplot(1,3,2);
plot(t,x2,'b');
xlabel('t');
ylabel('x2(t)');
legend('x2(t)');
subplot(1,3,3);

plot(t,x3,'m');
xlabel('t');
ylabel('x3(t)');
legend('x3(t)');
suptitle('weifei daishu fangzhen moxing');

save st1_data.mat t x1 x2 x3