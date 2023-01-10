import matplotlib.pyplot as plt
import pandas as pd

fpath = "iris.data"

x1 = "SepalLength"
x2 = "SepalWidth"
x3 = "PetalLength"
x4 = "PetalWidth"
x5 = "species"


iris = pd.read_csv(fpath, sep=",", header= None , names = [x1,x2,x3,x4,x5])


data = iris[x1]

P=[]    #查准率
R=[]    #查全率
 
num=4.5
 

for it in range(1,26):

    num+=0.1
    TP = 0
    FN = 0
    FP = 0
    TN = 0
    for i in range(1, 100):
 
        # 小于num认为他是对的
        if(iris.data[i][0]<=num):
            if(iris.target[i]==0):
                TP+=1
            else:
                FN+=1
 
        else:
            if(iris.target[i]==1):
                TN+=1
            else:
                FP+=1
 
    chazhun=TP / (TP + FP)
    chaquan=TP / (TP + FN)
    print(TP," ",FN," ",FP," ",TN)
    P.append(chazhun)
    R.append(chaquan)
 
print(P)
print(R)
 
plt.figure(figsize=(8,6))
plt.plot(R,P,color="red",linestyle='--')
plt.title("P-R曲线")
plt.xlabel("查全率")
plt.ylabel("查准率")
# plt.grid(True,linestyle='--',color="red",alpha=0.5)
plt.show()

