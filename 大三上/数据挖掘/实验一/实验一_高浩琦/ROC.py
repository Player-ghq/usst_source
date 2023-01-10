from sklearn import datasets
import matplotlib.pyplot as plt
import pandas as pd

plt.rcParams['font.sans-serif'] = ['SimHei']  # ����������ʾ���ı�ǩ
plt.rcParams['axes.unicode_minus'] = False  # ����������ʾ����


fpath = "iris.data"


x1 = "SepalLength"
x2 = "SepalWidth"
x3 = "PetalLength"
x4 = "PetalWidth"
x5 = "species"


iris = pd.read_csv(fpath, sep=",", header= None , names = [x1,x2,x3,x4,x5])


TPR = []  # ��������
FPR = []  # ��������

num = 4.5  # �б��׼

for it in range(1, 26):
    num += 0.1
    TP = 0
    FN = 0
    FP = 0
    TN = 0
    for i in range(1, 100):

        # С��num��Ϊ���ǶԵ�
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
plt.title("ROC����")
plt.xlabel("��������")
plt.ylabel("��������")
# plt.grid(True,linestyle='--',color="red",alpha=0.5)
plt.show()
