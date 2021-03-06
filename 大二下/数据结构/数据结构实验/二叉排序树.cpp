#include<cstdio>
#include<iostream>

using namespace std;
typedef int KeyType;
typedef char ElemType;


typedef struct BSTNode
{	KeyType key;
	ElemType data;
 	struct BSTNode *lchild,*rchild;
}BSTNode,*BSTree;




BSTree SearchBST(BSTree T,KeyType key)  //递归查找
{
	if((!T)||key == T->key){
		return T;
	}else if(key < T->key){
		return SearchBST(T->lchild,key);
	}else{
		return SearchBST(T->rchild,key);
	}
} 


void InsertBST(BSTree &T,KeyType key)
{	//当二叉排序树T中不存在关键字等于e.key的数据元素时，则插入该元素
	if(!T)
	{	
		BSTree S; 	
		S->key = key;
		S->lchild = S->rchild = NULL;
		T = S;  //T为空时才赋值
	}else if( key < T->key){
		InsertBSt(T->lchild,key);

	}else if( key > T->key){
		InsertBST(T->rchild,key);

	}
}


void CreatBST(BSTree &T,KeyType a[],int n)
{
	T = NULL;
	for(int i = 0;i < n;i++){
		InsertBST(T,a[i]);
	}
}



int DeleteBST(BiTree &T, int key)
{
	if (!T)
		return 0;
	else
	{
		if (key == T->key)
		{
			return Delete(T);
		}
		else if ( key< T->key)
		{
			return DeleteBST(T->lchild,key);
		}
		else
		{
			return DeleteBST(T->rchild,key);
		}
	}
}

// 目标结点是一个叶子结点，直接删除即可
// 目标结点存在左子树，用其左子树里的最大结点覆盖掉目标结点
// 目标结点存在右子树，用其右子树里的最小结点覆盖掉目标结点

int Delete(BiTree &p)
{
	BiTree q, s;

	if (p->rchild==NULL)
	{
		q = p; 
		p = p->lchild; 
		free(q);
	}
	else if (p->lchild==NULL)
	{
		q = p;
		p = p->rchild; 
		free(q);
	}
	else
	{	//左右都不为空
		q = p;
		s = p->lchild;
		while (s->rchild)
		{	//左子树的最右值 (最大值)
			q = s; 
			s = s->rchild;
		}
		p->key = s->key;

		//转移了放右边  为转移放左边
		if (q != p)
			q->rchild = s->lchild;
		else
			q->lchild = s->lchild;

		free(s);
	}

	return 1;
}


int main(){

	
}