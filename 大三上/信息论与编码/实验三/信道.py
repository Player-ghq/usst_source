# coding:gbk
import numpy as np
import math
#�����ŵ�����
m = int(input("�����ŵ�����������"))
n = int(input("�����ŵ�����������"))
pyx = np.empty([m,n], dtype = float) 
for i in range(m):
    for j in range(n):
        pyx[i][j] = float(input())
print("�ŵ�������\n",pyx)
print(pyx.shape)
e = float(input("���뾫�ȣ�"))
px = np.empty([1,m], dtype = float)
for i in range(m):
    px[0][i] = 1.0/m

py = np.empty([1,n], dtype = float)
py = np.dot(px,pyx)
pxy = np.empty([m,n], dtype = float) 

IU =10
IL = 0
b = np.empty([m,n], dtype = float)
while abs(IU-IL)>e:
    for i in range(m): 
        for k in range(n):
            a = pyx[i][k]*math.log(pyx[i][k]/py[0][k])
            b[i][k] = float(a)
    F = np.exp(b.sum(axis=1))
    h = np.vdot(F,px)
    x = sum(F)
    IL = math.log(h,2)
    g = max(F)
    IU = math.log(g,2)
    for i in range(m):
        px[0][i] = px[0][i] * F[i] / h
    py = np.dot(px,pyx)
    if abs(IU-IL)<=e:
        print(IL)
        break
