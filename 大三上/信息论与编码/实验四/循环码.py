# coding:gbk
import numpy as np
# ���ɾ���
G = np.array([
    [1,0,0,0,1,0,1],
    [0,1,0,0,1,1,1],
    [0,0,1,0,1,1,0],
    [0,0,0,1,0,1,1]
])
# У�����
H = np.array([
    [1,1,1,0,1,0,0],
    [0,1,1,1,0,1,0],
    [0,0,1,1,1,0,1]
])
# ����
def encode_cyclic(x):
    if not len(x) == 4:
        print("������4λ��Ϣ����")
        return
    y = np.dot(x,G)
    print(x,"����Ϊ��",y)
    return y
# ���룬�����뺺����һ��
def decode_cyclic(y):
    if not len(y) == 7:
        print("������7λ��Ϣ����")
        return
    x_tmp = np.dot(y,H.T)%2
    if (x_tmp!=0).any():
        for i in range(H.shape[1]):
            if (x_tmp==H[:,i]).all():
                y[i] = (y[i]-1)%2
                break
    x = y[0:4]
    print(y,"����Ϊ��",x)
    return x
# ����
if __name__ == '__main__':
    y = [1,0,0,0,1,0,1]
    decode_cyclic(y)
    x=[1,0,0,0]
    encode_cyclic(x)