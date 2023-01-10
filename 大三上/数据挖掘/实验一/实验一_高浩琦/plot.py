import pandas as pd
import matplotlib.pyplot as plt

fpath = "iris.data"

x1 = "SepalLength"
x2 = "SepalWidth"
x3 = "PetalLength"
x4 = "PetalWidth"
x5 = "species"

data = pd.read_csv(fpath, sep=",", header= None , names = [x1,x2,x3,x4,x5])

# # print(data.head(10))
# # print(data.describe())
# # print(data['species'].unique())
# # print(data['species'].value_counts())
# # print(data.cov())
# # print(data.corr())
# df = data.dropna()
# # print(df.isnull())



fig1 = plt.figure(figsize= (15,4),dpi = 80)
i = 1
for name in data:
    plt.subplot(1,4,i)
    plt.hist(data[name],10,edgecolor = 'black', alpha = 0.8)
    # print(type(name))
    plt.title(name)
    plt.xlabel("value")
    plt.ylabel("count")
    plt.grid()
    i += 1
    if i == 4:
        continue
    if i == 5:
        break


# print(data.loc[:,"SepalLength":"PetalWidth"])

fig2 = plt.figure(figsize= (8,6),dpi = 80)

plt.boxplot(data.loc[:,x1:x4],labels=[x1,x2,x3,x4])

plt.ylabel("vlaue(cm)")


fig3 = plt.figure(figsize= (15,4),dpi = 80)

plt.subplot(1,4,1)
plt.scatter(data[x1],data[x3], alpha = 0.8,color = "r")
plt.xlabel(x1)
plt.ylabel(x3)

plt.subplot(1,4,2)
plt.scatter(data[x1],data[x4], alpha = 0.8,color = "r")
plt.xlabel(x1)
plt.ylabel(x4)

plt.subplot(1,4,3)
plt.scatter(data[x2],data[x3], alpha = 0.8,color = "r")
plt.xlabel(x2)
plt.ylabel(x3)

plt.subplot(1,4,4)
plt.scatter(data[x2],data[x4], alpha = 0.8,color = "r")
plt.xlabel(x2)
plt.ylabel(x4)



plt.show()