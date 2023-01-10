from sklearn import datasets
import matplotlib.pyplot as plt
import pandas as pd

plt.rcParams['font.sans-serif'] = ['SimHei']  # 用来正常显示中文标签
plt.rcParams['axes.unicode_minus'] = False  # 用来正常显示负号


fpath = "iris.data"


x1 = "SepalLength"
x2 = "SepalWidth"
x3 = "PetalLength"
x4 = "PetalWidth"
x5 = "species"


iris = pd.read_csv(fpath, sep=",", header= None , names = [x1,x2,x3,x4,x5])


TPR = []  # 真正例率
FPR = []  # 假正例率

num = 4.5  # 判别标准

for it in range(1, 26):
    num += 0.1
    TP = 0
    FN = 0
    FP = 0
    TN = 0
    for i in range(1, 100):

        # 小于num认为他是对的
        if (iris.data[i][0] <= num):
            if (iris.target[i] == 0):
                TP += 1
            else:
                FN += 1

        else:
            if (iris.target[i] == 1):
                TN += 1
            else:
                FP += 1

    print(TP, " ", FN, " ", FP, " ", TN)
    TPR.append(TP / (TP + FN))
    FPR.append(FP / (TN + FP))

print(TPR)
print(FPR)

plt.figure(figsize=(8, 6))
plt.plot(FPR, TPR, color="red", linestyle='--')
plt.title("ROC曲线")
plt.xlabel("假正例率")
plt.ylabel("真正例率")
# plt.grid(True,linestyle='--',color="red",alpha=0.5)
plt.show()
