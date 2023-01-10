%shannon code
%%输入Q值并判断
while(1)
    Q = input("请输入Q的值(Q>10)： ");
    if(Q <= 10)
        disp('不满足Q>10的条件，请重新输入Q值！');
    else
        break;
    end
end
 
%%输入Q个元素的概率并判断
%%提供待测数组Q=11:[0.1274 0.1416 0.0199 0.1428 0.0989 0.0152 0.0435 0.0855 0.1497 0.1509 0.0246]
while(1)
    odds = input("请以数组形式[]输入Q个元素各自的概率(p>0)：");
    length_odds = length(odds);
    if(length_odds ~= Q)
        disp('输入概率个数错误（不为Q），请重新输入！');
    elseif(sum(odds) ~= 1)
        disp(['概率之和为:',num2str(sum(odds))]);%%帮助概率纠错
        disp('输入概率数值有误，请重新输入！');
    else
        break;
    end
end
 
%%对概率进行排序并求计算累积概率
[sort_odds , sort_index] = sort(odds , 'descend');%%分别为排序后的概率与最初的索引
odds_log2 = -log2([sort_odds]);
length_shannon = ceil(odds_log2);%%求得二进制代码组的长度
p = zeros(1,11);%%累积概率
for i = 2 : Q
    p(i) = sum(sort_odds(1 : (i - 1)));
end
 
%%编码
%%思路：将原本的积累概率乘2^L（即将二进制小数左移L位），可直接取整数部分的二进制值
%%过长的码字从截取最右端L位
shift_p = p.*(2.^length_shannon);%%移位后的值
shift_p_bin = dec2bin(shift_p);%%二进制结果,得到Q*Lmax char数组，可用shift_p_bin(i,:)调用
shannon_code = [];%%编码结果
for j = 1 : Q
    l1 = length_shannon(j);
    l2 = length(shift_p_bin(j,:));%%待截取码字长度
    code = shift_p_bin(j,:);%%待截取码字
    shannon_code = [shannon_code , str2num(code(l2-l1+1 : l2))];
end
 
%%编码结果打印
disp('--------------------------------------');
disp('香农编码结果：');
len_shannon = 0;
for k = 1 : Q
    index = sort_index(k);
    num = num2str(index);
    od = num2str(sort_odds(k));%%字符串形式的概率
    co = num2str(shannon_code(k));%%字符串形式的编码
    len_shannon = len_shannon + length_shannon(k)*sort_odds(k);
    if(length(co) ~= length_shannon(k))
        num_0 = length_shannon(k) - length(co);%%需要补充的0的个数
        for ii = 1 : num_0
            co = ['0',co];
        end
    end
    disp(['第',num,'个符号的概率为：',od,'，香农编码为：',co]);
end
 
%%编码参数计算与展示
l = len_shannon;%%平均码长
H = sum(odds.*log2(1./odds));%%熵
eff = H / (l*log2(2));%%编码效率
disp('--------------------------------------');
disp(['平均码长：',num2str(l)]);
disp(['信源熵：',num2str(H)]);
disp(['编码效率：',num2str(eff)]);
————————————————
版权声明：本文为CSDN博主「TeacherBee」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/qq_58534265/article/details/125539863