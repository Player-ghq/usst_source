#include<bits/stdc++.h>
#include<iostream>
using namespace std;

#define maxn 100

typedef int ElemType;

typedef struct 	//创建顺序表结构体 
{
	ElemType a[maxn];
	int length;
}sqlist;

void InitList(sqlist &l)	//顺序表初始化 
{
	l.length=0;
}

bool InsertList(sqlist &l,int i,ElemType x)	//线性表中插入元素 
{
		if(i>l.length||i<1) return 0;
		else{
			for(int p=l.length;p>=i;p--){
				l.a[p+1]=l.a[p];
			}
			l.a[i]=x;
			l.length++;
			return 1;
		}
} 

bool DeleteList(sqlist &l,ElemType x)	//删除顺序表中指定元素 
{
	bool f=1;
	int length=l.length;
	int i;
	for(i=1;i<=length;i++){
		if(l.a[i]==x){
			for(int j=i+1;j<=length;j++){
				l.a[j-1]=l.a[j];
			}
			l.length--;
			f=0;
		}
	}
	if(f) return 0;
	else return 1;	
} 

int FindList(sqlist &l,ElemType x)	//查找首先在顺序表中出现的元素 
{
	for(int i=1;i<=l.length;i++)
	{
		if(l.a[i]==x) return i;
	}
	return 0;
}

void OutputList(sqlist &l)
{
	for(int x=1;x<=l.length;x++)
	{
		cout<<l.a[x]<<" ";
	}
		cout<<endl;
} 
int main()
{
	sqlist list;	
	InitList(list);
	for(int x=0;x<=10;x++){

		list.a[x+1]=x;

		list.length++;
	}
	OutputList(list);

	if(InsertList(list,6,6)){
		cout<<"insert success"<<endl;
		OutputList(list);
	}else 
		cout<<"insert error"<<endl; 
	
	if(DeleteList(list,6)){
		cout<<"delete success"<<endl; 
		OutputList(list);
	}else cout<<"delete error"<<endl;
	
	cout<<"find?"<<endl;

	ElemType k;
	cin>>k;
	int sta=FindList(list,k);
	if(sta!=0){
		cout<<"位置为第"<<sta<<"位"<<endl; 
	}else cout<<"未查找到"<<endl; 

	//cout<<list.length;
}
