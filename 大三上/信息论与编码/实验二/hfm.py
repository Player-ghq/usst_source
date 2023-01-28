# coding:gbk
from math import inf

#初始化哈夫曼结点
class Huffmannode(object):
    def __init__(self):
        self.parent=0
        self.left=0
        self.right=0
        self.weight=0

#选择最小的结点下标
def select_node(huffman):
    #俩个结点直接返回不需要找最小俩个结点
    if len(huffman)==2:
        return 0,1
    min=semin=inf#初始化成无穷大
    f=s=-1
    for i in range(len(huffman)):
        if huffman[i].parent==0:
            if min>huffman[i].weight:
                semin=min
                s=f
                min=huffman[i].weight
                f=i
            elif semin>huffman[i].weight:
                semin=huffman[i].weight
                s=i
    return f,s



#编码
def Huffman_code(origin_dict):
    #给结点赋权重
    n=len(origin_dict)
    m=2*n-1
    huffman=[]
    for i in origin_dict:
        temp_huffmannode=Huffmannode()
        temp_huffmannode.weight=origin_dict[i]
        huffman.append(temp_huffmannode)
    # 构建Huffman树，选择俩个最小的结点合并
    for i in range(n,m):
        f,s=select_node(huffman)
        temp_huffmannode=Huffmannode()
        temp_huffmannode.weight=huffman[f].weight+huffman[s].weight
        temp_huffmannode.right=f#小的放在右边
        temp_huffmannode.left=s
        huffman[f].parent=huffman[s].parent=i
        huffman.append(temp_huffmannode)

    #0,1编码，右1，左0
    codeing_dict = dict.fromkeys(origin_dict, None)
    for i in range(0,n):
        s=''
        k=i
        parent=huffman[i].parent
        while parent!=0:
            if huffman[parent].left==k:
                s+='0'
                k=parent
                parent=huffman[parent].parent
            else:
                s+='1'
                k=parent
                parent=huffman[parent].parent
        codeing_dict[list(origin_dict.keys())[i]]=list(reversed(s))
    for k in codeing_dict.items():
        codeing_dict[k[0]] = ''.join(k[1])

    return codeing_dict



if __name__=='__main__':
    #输入原始字符集
    s = input('输入即将被编码的字符：')

    # 创建字典计算频率
    dic = {}
    for i in range(len(s)):
        # get方法，如果有键返回该键对应的值，如果没键，可以设置返回值
        dic[s[i]] = dic.get(s[i], 0) + 1
    code_dict=Huffman_code(dic)
    print(code_dict)
