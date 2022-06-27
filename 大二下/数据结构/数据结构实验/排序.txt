#include<cstdio>
#include<iostream>

using namespace std;

typedef int KeyType;
typedef char ElemType;

typedef struct
{   KeyType key;
    ElemType data;	
}SqType;


void InsertSort(SqType R[],int n)	
{   int j; 
    SqType tmp;
    for (int i = 1;i < n;i++)   	//从第二个元素即R[1]开始的
    {
        if (R[i-1].key > R[i].key)
        {   
            tmp = R[i];
            j = i-1;     		//在R[0..i-1]中找R[i]的插入位置
            do
            {   
                R[j+1]=R[j];	    //将关键字大于tmp.key的元素后移
                j--;		    //继续向前比较
            }while(j>=0 && R[j].key>tmp.key);

            R[j+1]=tmp;		    //在j+1处插入R[i]

        }
    }
}

void SelectSort(SqType R[],int n)	
{   int k;
    SqType tmp;
    for (int i = 0;i < n-1; i++)
    {
        k = i;
        for (int j = i+1;j < n;j++)
        {   if (R[j].key<R[k].key) 
                k = j;	//用k指出每趟在无序区段的最小元素
        }
        if (k!=i)
        {   
            tmp=R[i];	//将R[k]与R[i]交换
            R[i]=R[k]; 
            R[k]=tmp;
        }
    }
}


void QuickSort(SqType R[],int s,int t) 
{   int i=s,j=t; 
    SqType tmp;
    if (s<t) 		
    {   
        tmp=R[s];	
        while (i!=j)	//从区间两端交替向中间扫描,直至i=j
        {   while (j>i && R[j].key>=tmp.key) 
            j--;    	//从右向左,找第1个小于tmp.key的R[j]
            R[i]=R[j];	//将R[j]前移到R[i]的位置
            while (i<j && R[i].key<=tmp.key) 
                i++;   	//从左向右扫描,找第1个大于tmp.key的R[i]
                R[j]=R[i];	//将R[i]后移到R[j]的位置
        }

        R[i]=tmp;
        QuickSort(R,s,i-1);
        QuickSort(R,i+1,t);	
    }
}

