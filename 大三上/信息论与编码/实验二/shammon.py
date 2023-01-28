# coding:gbk


import numpy
from numpy.core import double

# 信源符号的个数
n = int(input("please input xinyuan sign number:"))   # 强制转换类型，如若输入其他字符将会报错


# 信源符号的输入
p = [double(n) for n in input("请输入信2源符号：").split()]    # 强制转换类型
# 检测输入合法性，概率大于0小于1
for i in range(n):
    if p[i] >= 1 or p[i] <= 0:
        print("输入不合法！")
        exit(0)

# 将信源符号从大到小进行排序
p.sort(reverse=True)


# 累积概率
P = [0]
for i in range(n-1):
    P.append(P[i]+p[i])    # python列表只能追加

# 码字长度
k = []
for i in range(n):
    if int(-numpy.math.log(p[i], 2)) == -numpy.math.log(p[i], 2):
        k.append(int(-numpy.math.log(p[i], 2)))
    else:
        k.append(int(1-numpy.math.log(p[i], 2)))

# 香农编码表输出
print("-------香农编码表-------")
print("i\t概率\t累积\t码字\t")
for i in range(n):
    print(str(i+1)+'\t'+str(p[i])+'\t'+str(P[i])+'\t'+str(k[i]))

# 信源熵
h = 0
for i in range(n):
    h += -p[i]*numpy.math.log(p[i], 2)

# 平均码长
K = 0
for i in range(n):
    K += k[i]*p[i]

# 信息率
L = 1   # 单符号
m = 2   # 二进制
R = K/L*numpy.math.log(2, m)

# 编码效率
e = h/R
print("香农编码的编码效率="+str(round((e*100), 2))+"%")      # 保留两位小数




