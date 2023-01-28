# coding:gbk
import numpy as np
# 生成矩阵
G = np.array([
    [1,0,0,0,1,0,1],
    [0,1,0,0,1,1,1],
    [0,0,1,0,1,1,0],
    [0,0,0,1,0,1,1]
])
# 校验矩阵
H = np.array([
    [1,1,1,0,1,0,0],
    [0,1,1,1,0,1,0],
    [0,0,1,1,1,0,1]
])
# 编码
def encode_cyclic(x):
    if not len(x) == 4:
        print("请输入4位信息比特")
        return
    y = np.dot(x,G)
    print(x,"编码为：",y)
    return y
# 译码，过程与汉明码一致
def decode_cyclic(y):
    if not len(y) == 7:
        print("请输入7位信息比特")
        return
    x_tmp = np.dot(y,H.T)%2
    if (x_tmp!=0).any():
        for i in range(H.shape[1]):
            if (x_tmp==H[:,i]).all():
                y[i] = (y[i]-1)%2
                break
    x = y[0:4]
    print(y,"解码为：",x)
    return x
# 测试
if __name__ == '__main__':
    y = [1,0,0,0,1,0,1]
    decode_cyclic(y)
    x=[1,0,0,0]
    encode_cyclic(x)