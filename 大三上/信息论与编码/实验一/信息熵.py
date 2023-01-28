import math

def H(X):
    """
    计算信息熵
    H(X) = -sigma p(x)log p(x)
    :param X:
    :return:
    """
    x_values = {}
    for x in X:
        x_values[x] = x_values.get(x, 0) + 1
    length = len(x_values)
    ans = 0
    for x in X:
        p = x_values.get(x) / length
        ans += p * math.log2(p)

    return 0 - ans


def condition_H(X, Y):
    """
    条件互信息计算
    H(X|Y) = Sigma_Y p(y)*H(X|Y=y)
    :param X:
    :param Y:
    :return:
    """
    y_value = set(Y)
    y_condition = {}
    for v in y_value:
        y_condition[v] = []
    for x, y in zip(X, Y):
        y_condition[y].append(x)
    y_counts = {}
    for y in Y:
        y_counts[y] = y_counts.get(y, 0) + 1
    ans = 0
    for k in y_counts:
        ans += k * H(y_condition[k])
    return ans / len(y_counts)
