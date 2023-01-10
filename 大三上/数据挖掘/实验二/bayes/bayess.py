# -!- coding: utf-8 -!-

from sklearn.preprocessing import LabelEncoder
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split

from sklearn.preprocessing import StandardScaler

from sklearn.naive_bayes import GaussianNB
from sklearn.naive_bayes import BernoulliNB


data = pd.read_csv("mushroom.csv",header= None)


## 字母转化为数字 ##

labelincoder = LabelEncoder()

for col in data.columns:
    data[col] = labelincoder.fit_transform(data[col])
    # print(col)


## 提取 类标签和变量属性
y = data[0]
x = data.drop(0, axis = 1)



xtrain,xtest,ytrain,ytest = train_test_split(x,y,test_size = 0.3 ,random_state = 1 )

## 标准化

ss_x = StandardScaler()

xtrain = ss_x.fit_transform(xtrain)
xtest = ss_x.fit_transform(xtest)

## 计算模型
clf = GaussianNB()
model_tree = clf.fit(xtrain,ytrain)

score = []
score.append(model_tree.score(xtest,ytest))



# clf = MultinomialNB()
# model_tree = clf.fit(xtrain,ytrain)

# score = model_tree.score(xtest,ytest)
# print(score)


clf = BernoulliNB()
model_tree = clf.fit(xtrain,ytrain)

score.append(model_tree.score(xtest,ytest))

    
print("GaussianNB:",score[0])
print("BernoulliNB:",score[0])