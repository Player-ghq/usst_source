from apyori import apriori

import numpy as np

def info(results):
    for result in results:
        # for i in result.ordered_statistics:

        # print(result.items)
        for i in result.ordered_statistics:
            if i.items_base and i.items_add:
                print(list(i.items_base) , "====>" , list(i.items_add), "confidence:",i.confidence,"lift:",i.lift)
            else:
                print("skip")

f = open("story.txt",'r',encoding="utf-8")
orders = []

for i in f:
    orders.append(i.strip("\n").split(","))

print(orders)

results = apriori(transactions=orders, min_support = 0.2 ,min_confidence = 0.7)

support = np.arange(1,10,1)/10

confidence = np.arange(1,10,1)/10

for i in support:
    for j in confidence:
        results = apriori(transactions=orders, min_support = i ,min_confidence = j)
        print("min_support = ",i,"min_confidence = ",j)
        info(results)
        print()

# info(results)