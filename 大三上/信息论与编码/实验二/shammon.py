# coding:gbk


import numpy
from numpy.core import double

# ��Դ���ŵĸ���
n = int(input("please input xinyuan sign number:"))   # ǿ��ת�����ͣ��������������ַ����ᱨ��


# ��Դ���ŵ�����
p = [double(n) for n in input("��������2Դ���ţ�").split()]    # ǿ��ת������
# �������Ϸ��ԣ����ʴ���0С��1
for i in range(n):
    if p[i] >= 1 or p[i] <= 0:
        print("���벻�Ϸ���")
        exit(0)

# ����Դ���ŴӴ�С��������
p.sort(reverse=True)


# �ۻ�����
P = [0]
for i in range(n-1):
    P.append(P[i]+p[i])    # python�б�ֻ��׷��

# ���ֳ���
k = []
for i in range(n):
    if int(-numpy.math.log(p[i], 2)) == -numpy.math.log(p[i], 2):
        k.append(int(-numpy.math.log(p[i], 2)))
    else:
        k.append(int(1-numpy.math.log(p[i], 2)))

# ��ũ��������
print("-------��ũ�����-------")
print("i\t����\t�ۻ�\t����\t")
for i in range(n):
    print(str(i+1)+'\t'+str(p[i])+'\t'+str(P[i])+'\t'+str(k[i]))

# ��Դ��
h = 0
for i in range(n):
    h += -p[i]*numpy.math.log(p[i], 2)

# ƽ���볤
K = 0
for i in range(n):
    K += k[i]*p[i]

# ��Ϣ��
L = 1   # ������
m = 2   # ������
R = K/L*numpy.math.log(2, m)

# ����Ч��
e = h/R
print("��ũ����ı���Ч��="+str(round((e*100), 2))+"%")      # ������λС��




