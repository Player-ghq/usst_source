%����ģ���ļ����������������������
t=tout;
y1=yout(:,1);
y2=yout(:,2);
y3=yout(:,3);
y=yout;
save st1_data t y1 y2 y3 y

load st1_data;

% t = tout
% y = 
subplot(2,2,1)  %��ͼ���ڵ�һ���Ӵ��ڻ���x1(t)��ͼ��
plot(t,y1,'b')
xlabel('ʱ��t');ylabel('x1(t)')  %�ֱ��x���y��д�ϱ�ǩ
title('x1(t)�Ľ�')    %���Ӵ�����ӱ���
legend('x1(t)','Location','best')  %���ͼ��

subplot(2,2,2)  %��ͼ���ڵڶ����Ӵ��ڻ���x2(t)��ͼ��
plot(t,y2,'r')
xlabel('ʱ��t');ylabel('x2(t)')  %�ֱ��x���y��д�ϱ�ǩ
title('x2(t)�Ľ�')     %���Ӵ�����ӱ���
legend('x2(t)','Location','best')  %���ͼ��

subplot(2,2,3)  %��ͼ���ڵ������Ӵ��ڻ���x3(t)��ͼ��
plot(t,y3,'g')
title('x3(t)�Ľ�')     %���Ӵ�����ӱ���
xlabel('ʱ��t');ylabel('x3(t)')  %�ֱ��x���y��д�ϱ�ǩ
legend('x3(t)','Location','best')  %���ͼ��

subplot(2,2,4)  %��ͼ���ڵ��ĸ��Ӵ��ڻ���x(t)��ͼ��
plot(t,y)
title('x(t)�Ľ�')     %���Ӵ�����ӱ���
xlabel('ʱ��t');ylabel('x1,x2,x3')  %�ֱ��x���y��д�ϱ�ǩ
legend('x1(t)','x2(t)','x3(t)','Location','best') %���ͼ��

suptitle('΢�ַ��̷���ͼ��')  %����ͼ�δ������ӱ��⡰΢�ַ��̷���ͼ�Ρ�
