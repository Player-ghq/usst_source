from sklearn.datasets import load_wine
from sklearn.neighbors import KNeighborsClassifier
from sklearn.model_selection import train_test_split

import pandas as pd
import matplotlib.pyplot as plt
data = load_wine()

data_x = data.data
data_y = data.target

xtrain,xtest,ytrain,ytest = train_test_split(data_x,data_y,test_size = 0.4 ,random_state = 1 )

# print(xtest.shape)

score = []
k = [3,5,7]
i = 0
for x in k:
    knn = KNeighborsClassifier(n_neighbors = x)

    clf = knn.fit(xtrain,ytrain)

    score.append(clf.score(xtest,ytest))
    i = i + 1

print("k = 3:",score[0])
print("k = 5:",score[1])
print("k = 7",score[2])
fig = plt.figure(alpha = 0.5)
plt.bar(k,score,color = 'b')

plt.xlabel = "k"
plt.ylabel = "ppp"

# plt.legend = "ss"
# fig.align_ylabels = "p"

plt.show()










