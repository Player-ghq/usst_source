
x1 = yout(:,1);

x2 = yout(:,2);

x3 = yout(:,3);
t = tout;

figure(1);

subplot(2,2,1);
plot(t,x1,'b');
xlabel("t");
ylabel("x1(t)")

subplot(2,2,2);
plot(t,x2,'c');
xlabel("t");
ylabel("x2(t)")

subplot(2,2,3);
plot(t,x3,'m');
xlabel("t");
ylabel("x3(t)")

subplot(2,2,4);
plot(t,yout)

suptitle("Lorenz model figure");



save st1_data.mat t x1 x2 x3
