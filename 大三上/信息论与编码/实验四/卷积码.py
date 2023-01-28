def encode_conv(x):
    # 存储编码信息
    y = []
    # 两个寄存器u_1 u_2初始化为0
    u_2 = 0
    u_1 = 0
    for j in x:
        c_1 = (j + u_1 + u_2)%2
        c_2 = (j+u_2)%2
        y.append(c_1)
        y.append(c_2)
        # 更新寄存器
        u_2 = u_1
        u_1 = j
    print(x,"编码为：",y)
    return y
# 测试代码
if __name__ == '__main__':
    encode_conv([1,0,0,1,0])