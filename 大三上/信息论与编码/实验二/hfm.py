# coding:gbk
from math import inf

#��ʼ�����������
class Huffmannode(object):
    def __init__(self):
        self.parent=0
        self.left=0
        self.right=0
        self.weight=0

#ѡ����С�Ľ���±�
def select_node(huffman):
    #�������ֱ�ӷ��ز���Ҫ����С�������
    if len(huffman)==2:
        return 0,1
    min=semin=inf#��ʼ���������
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



#����
def Huffman_code(origin_dict):
    #����㸳Ȩ��
    n=len(origin_dict)
    m=2*n-1
    huffman=[]
    for i in origin_dict:
        temp_huffmannode=Huffmannode()
        temp_huffmannode.weight=origin_dict[i]
        huffman.append(temp_huffmannode)
    # ����Huffman����ѡ��������С�Ľ��ϲ�
    for i in range(n,m):
        f,s=select_node(huffman)
        temp_huffmannode=Huffmannode()
        temp_huffmannode.weight=huffman[f].weight+huffman[s].weight
        temp_huffmannode.right=f#С�ķ����ұ�
        temp_huffmannode.left=s
        huffman[f].parent=huffman[s].parent=i
        huffman.append(temp_huffmannode)

    #0,1���룬��1����0
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
    #����ԭʼ�ַ���
    s = input('���뼴����������ַ���')

    # �����ֵ����Ƶ��
    dic = {}
    for i in range(len(s)):
        # get����������м����ظü���Ӧ��ֵ�����û�����������÷���ֵ
        dic[s[i]] = dic.get(s[i], 0) + 1
    code_dict=Huffman_code(dic)
    print(code_dict)
