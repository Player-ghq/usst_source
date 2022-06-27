%运行模型文件后，在命令窗口输入如下命令
t=tout;
y1=yout(:,1);
y2=yout(:,2);
y3=yout(:,3);
y=yout;
save st1_data t y1 y2 y3 y

load st1_data;

% t = tout
% y = 
subplot(2,2,1)  %画图，在第一个子窗口绘制x1(t)的图形
plot(t,y1,'b')
xlabel('时间t');ylabel('x1(t)')  %分别给x轴和y轴写上标签
title('x1(t)的解')    %给子窗口添加标题
legend('x1(t)','Location','best')  %添加图例

subplot(2,2,2)  %画图，在第二个子窗口绘制x2(t)的图形
plot(t,y2,'r')
xlabel('时间t');ylabel('x2(t)')  %分别给x轴和y轴写上标签
title('x2(t)的解')     %给子窗口添加标题
legend('x2(t)','Location','best')  %添加图例

subplot(2,2,3)  %画图，在第三个子窗口绘制x3(t)的图形
plot(t,y3,'g')
title('x3(t)的解')     %给子窗口添加标题
xlabel('时间t');ylabel('x3(t)')  %分别给x轴和y轴写上标签
legend('x3(t)','Location','best')  %添加图例

subplot(2,2,4)  %画图，在第四个子窗口绘制x(t)的图形
plot(t,y)
title('x(t)的解')     %给子窗口添加标题
xlabel('时间t');ylabel('x1,x2,x3')  %分别给x轴和y轴写上标签
legend('x1(t)','x2(t)','x3(t)','Location','best') %添加图例

suptitle('微分方程仿真图形')  %给该图形窗口增加标题“微分方程仿真图形”
