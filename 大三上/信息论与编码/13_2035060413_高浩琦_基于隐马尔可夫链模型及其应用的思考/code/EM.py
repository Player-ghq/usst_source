import numpy as np
class Baum:
    def __init__(self,Q):
        self.l=len(Q)
        self.Q=Q
        self.n=len(set([i for j in Q for i in j]))  ##观测状态的个数
        self.m=4
        self.A=np.zeros((4,4))
        self.B=np.zeros((4,self.n))
        self.W=np.zeros(4)
        self.T=len(Q[0])
        self.initial()
    def initial(self):
        for i in range(4):
            for j in range(4):
                self.A[i,j]=0.25
        for i in range(4):
            for j in range(self.n):
                self.B[i,j]=self.n
        for i in range(4):
            self.W[i]=0.25

    def main(self):
        for iter in range(20):
            for l in range(len(self.Q)):
                gama,sigma=self.update(self.Q[l])
                for i in range(4):
                    for j in range(4):
                        self.A[i,j]=sum([sigma[t,i,j] for t in range(self.T-1)])/sum([gama[t,i] for t in range(self.T-1)])
                for i in range(4):
                    for j in range(self.n):
                        temp=0
                        for t in range(self.T):
                            if self.Q[l][t]==j:
                                temp+=gama[t,i]
                        self.B[i,j]=temp/sum([gama[t,i] for t in range(self.T)])
                for i in range(4):
                    self.W[i]=gama[0][i]
                
    def update(self,O):
        a = [[0 for i in range(len(self.B))] for j in range(len(O))]
        for i in range(len(self.B)):
            a[0][i]=self.W[i]*self.B[i][O[0]]

        for t in range(1,len(O)):
            for i in range(len(self.B)):
                a[t][i]=0
                for j in range(len(self.B)):
                    a[t][i]+=a[t-1][j]*self.A[j,i]*self.B[i,O[t]]

        b = [[0 for i in range(len(self.B))] for j in range(len(O))]
        for i in range(len(self.B)):
            b[-1][i]=1
        for t in range(len(O)-2,-1,-1):
            for i in range(len(self.B)):
                b[t][i]=0
                for j in range(len(self.B)):
                    b[t][i]+=b[t+1][j]*self.A[i,j]*self.B[j,O[t+1]]

        """
        gama t i 表示给定模型个观测数据的情况下在时刻t系统状态为i的概率
        """
        gama = np.zeros((self.T, 4))
        for t in range(self.T):
            for i in range(4):
                gama[t,i]=a[t][i]*b[t][i]/sum([a[t][k]*b[t][k] for k in range(4)])

        """
        sgma t i，j 表示给定模型个观测数据的情况下在时刻t系统状态为i,且t+1时刻状态为j的概率
        """
        sigma = np.zeros((self.T, 4, 4))
        for t in range(self.T-1):
            temp=0
            for i in range(4):
                for j in range(4):
                    temp+=a[t][i]*self.A[i,j]*self.B[i,O[t]]*b[t+1][j]
            for i in range(4):
                for j in range(4):
                    sigma[t,i,j]=a[t][i]*self.A[i,j]*self.B[i,O[t]]*b[t+1][j]/temp

        return gama,sigma

T=Baum([[0,1,1,0,2,3,0,1],[0,2,3,0,1,2,3,0],list(map(int,list("12300212")))])
T.main()
