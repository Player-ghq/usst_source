# %%
import matplotlib.pylab as plt

import pandas as pd
from sklearn.datasets import load_digits
digits = load_digits()

y = digits.target



# %%
df = pd.DataFrame(data = digits.data)
df.head()



# %%
from sklearn.model_selection import KFold

kf = KFold(n_splits= 6, shuffle= True)

# %%
df.loc[1:6]

# %%
# for xtrain,xtest in kf.split():
from sklearn.svm import SVC

from sklearn.preprocessing import StandardScaler
score = []
for train_index, test_index in kf.split(df):
    # print("TRAIN:", train_index.size, "\nTEST:", test_index.size)
    X_train, X_test = df.loc[train_index], df.loc[test_index]
    Y_train, Y_test = y[train_index], y[test_index]

    # ss_x = StandardScaler()

    # X_train = ss_x.fit_transform(X_train)
    # X_test = ss_x.fit_transform(X_test)

    svm = SVC()

    dlf = svm.fit(X_train,Y_train)

    score.append(dlf.score(X_test,Y_test))

print(score)
    

# %%



