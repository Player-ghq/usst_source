import numpy as np
 
def func(X):
    '''
    返回G * H_T
    '''
 
    H = np.array(
        [[0, 0, 0, 1, 1, 1, 1],
         [0, 1, 1, 0, 0, 1, 1],
         [1, 0, 1, 0, 1, 0, 1]])
 
    G1 = np.eye(4)
 
    G2 = [[X[0], X[1], X[2]]
        , [X[3], X[4], X[5]]
        , [X[6], X[7], X[8]]
        , [X[9], X[10], X[11]]]
    G = np.concatenate((G1, G2), axis=1)
 
    GH_T = np.dot(G, np.transpose(H))
    m, n = GH_T.shape[0], GH_T.shape[1]
    for i in range(m):
        for j in range(n):
            GH_T[i][j] %= 2                     #不进位
    GH_T = np.array(GH_T)
    GH_T = GH_T.reshape(1,12)
 
    return GH_T
 
def shuzu(j,len):
    '''
    将字符串转换为数组
    '''
    C = np.zeros((len,))
    for k in range(0,len):
        C[k] = int(j[k])
    return C
 
def func2(e):
    '''
    返回伴随式s = e * H_T
    '''
    H = np.array(
        [[0, 0, 0, 1, 1, 1, 1],
         [0, 1, 1, 0, 0, 1, 1],
         [1, 0, 1, 0, 1, 0, 1]])
    s_ = np.dot(e,np.transpose(H))
    k = s_.shape[0]
    for i in range(k):
        s_ %= 2             #不进位
    return s_
 
def siranguji(e_dataset):
    '''
    求每一个满足条件的e的概率
    '''
    p_mat = np.array([[6/7,1/7]
                  ,[1/7,6/7]])
    P_ = []
    length = len(e_dataset)
    for i in range(0, length):
        P = 1
        for j in range(0,7):
            if e_dataset[i][j] == 1:
                P = P * p_mat[0][1]
            elif e_dataset[i][j] == 0:
                P = P * p_mat[0][0]
        P_.append(P)
 
    return P_
 
C = np.zeros((12,))
for i in range(0,pow(2,12)):
    D = np.zeros((1,12))
    i = bin(i)
    j = i[2:]
    j = j.zfill(12)
    C = shuzu(j,12)
    G = func(C)
    if (G== D).all():
 
        X = C                       #X为满足G * H_T = 0的解
 
H = np.array(
            [[0, 0, 0, 1, 1, 1, 1],
             [0, 1, 1, 0, 0, 1, 1],
             [1, 0, 1, 0, 1, 0, 1]])
print('构造的固定的校验矩阵H为：')
print(H)
 
G1 = np.eye(4)
G2 = [[X[0], X[1], X[2]]
        , [X[3], X[4], X[5]]
        , [X[6], X[7], X[8]]
        , [X[9], X[10], X[11]]]
G = np.concatenate((G1, G2), axis=1)
print('相应的输出矩阵G为：')
print(G)
 
X = [1,0,0,0,1,0,0,1]           #输入8位的x
print('输入的x为：')
print(X)
X1 = X[0:4]                     #其中前4位做一次汉明编码
X2 = X[4:8]                     #其中后4位做一次汉明编码
C1 = np.dot(X1,G)               #C = XG
 
i = C1.shape[0]
for j in range(i):
    C1[j] %= 2          #不进位
C2 = np.dot(X2,G)
i = C2.shape[0]
for j in range(i):
    C2[j] %= 2          #不进位
 
C = np.concatenate((C1,C2),axis=0)
print('生成的C为：')
print(C)
 
r = [0,0,0,0,0,1,1,1,0,0,1,1,0,1]
r1 = r[0:7]             #前7位求一次伴随式
r2 = r[7:]              #后7位求一次伴随式
 
s1 = np.dot(r1,np.transpose(H))
i = s1.shape[0]
for j in range(i):
    s1[j] %= 2          #不进位
s2 = np.dot(r2, np.transpose(H))
i = s2.shape[0]
for j in range(i):
    s2[j] %= 2          #不进位
 
s = np.concatenate((s1,s2),axis=0)
print('s为：')
print(s)
 
 
e_dataset1 = []
e_dataset2 = []
 
for i in range(0,pow(2,7)):
    i = bin(i)
    j = i[2:]
    j = j.zfill(7)
    e = shuzu(j,7)
    s_ = func2(e)
 
    if (s_ == s1).all():
        e_dataset1.append(e)            #求满足条件的e
    if (s_ == s2).all():
        e_dataset2.append(e)
 
P_1 = siranguji(e_dataset1)
index1 = np.argmax(P_1)
e_1 = np.array(e_dataset1[index1],dtype=int)         #求概率最大的e    前面的
 
P_2 = siranguji(e_dataset2)
index2 = np.argmax(P_2)
e_2 = np.array(e_dataset2[index2],dtype=int)         #求概率最大的e    后面的
 
e_ = np.concatenate((e_1,e_2),axis=0)
 
print('r为:')
print(r)
print('e为:')
print(e_)
for j in range(0,7):
    r_  = np.bitwise_xor(r,e_)
print('c的估计为:')
print(r_)