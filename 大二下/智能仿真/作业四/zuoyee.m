
clc;
t=tout;
y1=yout(:,1);
y2=yout(:,2);
y3=yout(:,3);
y=yout;
save st1_data.mat t y1 y2 y3 y



subplot(2,2,1);
plot(t,y);
xlabel('t');
ylabel('x(t)') 
title('x(t)')    
legend('x1(t)','x2(t)','x3(t)','Location','best')  


subplot(2,2,2);
plot(t,y1,'m');
xlabel('t');
ylabel('x1(t)') 
title('x1(t)')    
legend('x1(t)','Location','best')  

subplot(2,2,3);
plot(t,y2,'b');
xlabel('t');
ylabel('x2(t)') 
title('x2(t)')   
legend('x2(t)','Location','best') 


subplot(2,2,4);
plot(t,y3,'c');
xlabel('t');
ylabel('x3(t)') 
title('x3(t)') 
legend('x3(t)','Location','best') 


suptitle('weifeifangzhengtuxing')
