%% 输出库存量，生产量，和销售量
stock=input('请输入库存量:');
outout=input('请输入生产量:');
I=ones(10,1);
p=ones(10,1);
s=ones(10,1);
p(1)=outout;
I(1)=stock;
for i=1:10
    sale=input('请输入销售量:');
    s(i)=sale;
end

%% 输出第k周的库存数量
t=11;f=1;
for i=1:10
    if i>1
        p(i)=s(i-1);
        I(i)=I(i-1)+p(i-1)-s(i-1);
        if I(i)<0
        I(i)=0;
        end
    end
    if I(i)==0&f==1
        t=i;
        f=0;
    end
    
    disp(['第',num2str(i),'周的库存量为:',num2str(I(i))]);
end
if(t<=10)
    disp(['10周内减少的到0的时间为第：',num2str(t),'周']);
else
    disp('10周内库存量没有减少到0');
end
figure(1);
a=1:10;
plot(a,I,'m+-');
xlabel('时间');
ylabel('库存量');
title('10周内高尔夫手推车库存数量变化');


%% 讨论初始库存的变化带来的影响
k=2;
for  stock=10:10:50
     I(1)=stock;f=1;
     disp(['当初始库存为',num2str(stock),'时']);
     t=11;
    for i=1:10
        if i>1
            p(i)=s(i-1);
            I(i)=I(i-1)+p(i-1)-s(i-1);
        end
    if I(i)==0&f==1
        t=i;
        f=0;
    end
    
    if I(i)<0
        I(i)=0;
    end
    display(['第',num2str(i),'周的库存量为:',num2str(I(i))]);
    end
    if(t<=10)
    disp(['10周内减少的到0的时间为第：',num2str(t),'周']);
    else
    disp('10周内库存量没有减少到0');
    end
    figure(k);k=k+1;
    a=1:10;
    plot(a,I,'m+-');
    hold on;
    if t<10
    plot(t,0,'pk');
    end
    xlabel('时间');
    ylabel('库存量');
    title('10周内高尔夫手推车库存数量变化');
    newline;
end
%% 保存数据
save ('xs.mat','s');