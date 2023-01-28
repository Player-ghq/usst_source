import numpy as np
class wbt:
    def __init__(self):
        self.A=[[0.5,0.2,0.3],[0.3,0.5,0.2],[0.2,0.3,0.5]]       ##转移概率
        self.B=[[0.5,0.5],[0.4,0.6],[0.7,0.3]]                   ##观测概率
        self.W=[0.2,0.4,0.4]
        self.O=[0,1,0]
        self.m=len(self.A) ## 状态的种数
        self.n=len(self.O) ## 观测的个数
        self.sigma=[[0 for _ in range(self.m)] for _ in range(self.n)]
        self.psi=[[0 for _ in range(self.m)] for _ in range(self.n)]


    def main(self):
        self.sigma[0][:]=[self.W[i]*self.B[i][self.O[0]] for i in range(self.m)]
        for i in range(1,self.n):
            for j in range(self.m):
                tem=[self.sigma[i-1][k]*self.A[k][j] for k in range(self.m)]
                tem_max=max(tem)
                self.sigma[i][j]=tem_max*self.B[j][self.O[i]]
                self.psi[i][j]=np.argmax(tem)

        res=[np.argmax(self.sigma[-1][:])]
        for i in range(self.n-1):
            res.insert(0,np.argmax(self.psi[res[-1]][:]))
        print(res)

T=wbt()
T.main()
