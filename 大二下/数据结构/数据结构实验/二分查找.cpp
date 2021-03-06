#include<stdio.h>
#include<iostream>

using namespace std;

typedef int KeyType;
typedef char ElemType;

typedef struct
{   KeyType key;  // 关键字
    ElemType data;	
}SqType;


int BinSearch(SqType R[],int n,KeyType k)   //n是数组大小
{   
    int low=0,high=n-1,mid;

    while (low<=high)  //循环
    {    
        mid=(low+high)/2;	
        if (R[mid].key==k)
            return mid+1;	//返回逻辑序号
        else if (R[mid].key>k)	//在R[low..mid-1]中查找
            high=mid-1;
        else
            low=mid+1;		//在R[mid+1..high]中查找
    }
   return 0;			//没有找到返回0
}



status DeleteBST(BiTree* T, int key)
{
	if (!*T)
		return false;
	else
	{
		if (key == (*T)->data)
		{
			return Delete(T);
		}
		else if (key<(*T)->data)
		{
			return DeleteBST(&(*T)->lchild,key);
		}
		else
		{
			return DeleteBST(&(*T)->rchild,key);
		}
	}
}
