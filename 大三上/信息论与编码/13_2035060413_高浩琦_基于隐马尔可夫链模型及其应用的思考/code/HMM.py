class HMM1:
    def __init__(self):
        self.A=[[0,1,0,0],[0.4,0,0.6,0],[0,0.4,0,0.6],[0,0,0.5,0.5]]       ##转移概率
        self.B=[[0.5,0.5],[0.3,0.7],[0.6,0.4],[0.8,0.2]]                   ##观测概率
        self.W=[0.25,0.25,0.25,0.25]
        ##初始状态
    def cal_q(self,Q):
        """
        前向算法
        :param Q: 观测数据 1，0，1，0，1，0
        :return:
        """
        a=[[0 for i in range(len(self.B))] for j in range(len(Q))]
        for i in range(len(self.B)):
            a[0][i]=self.W[i]*self.B[i][Q[0]]
        for t in range(1,len(Q)):
            for i in range(len(self.B)):
                a[t][i]=0
                for j in range(len(self.B)):
                    a[t][i]+=a[t-1][j]*self.A[j][i]*self.B[i][Q[t]]
        return sum(a[-1])
    def cal_q2(self,Q):
        """
        后向算法
        :param Q: 观测数据 1，0，1，0，1，0
        :return:
        """
        b = [[0 for i in range(len(self.B))] for j in range(len(Q))]
        for i in range(len(self.B)):
            b[-1][i]=1
        for t in range(len(Q)-2,-1,-1):
            for i in range(len(self.B)):
                b[t][i]=0
                for j in range(len(self.B)):
                    b[t][i]+=b[t+1][j]*self.A[i][j]*self.B[j][Q[t+1]]
        q=0
        for i in range(len(self.B)):
            q+=b[0][i]*self.W[i]*self.B[i][Q[0]]
        return q
T=HMM1()
print(T.cal_q([0,1,1,0]))
print(T.cal_q2([0,1,1,0]))
