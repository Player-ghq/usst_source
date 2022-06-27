#include<stdio.h>
#include<iostream>

typedef int ElemType;


typedef struct tnode
{  ElemType data;			
   struct tnode *lchild,*rchild;	//左右两个
} BTNode;



//默认规定一个传入的为最上面的头节点

void PreOrder(BTNode *b)
{  if (b!=NULL)  
    {  
        printf("%c ",b->data);
        PreOrder(b->lchild);
        PreOrder(b->rchild);
    }
}


void InOrder(BTNode *b)
{  if (b!=NULL)  
    {   InOrder(b->lchild);
        printf("%c ",b->data); 
        InOrder(b->rchild);
    }
}


void PostOrder(BTNode *b) 
{  if (b!=NULL)  
    {   PostOrder(b->lchild);
        PostOrder(b->rchild);
        printf("%c ",b->data);
    }
}

int max=0;//树高 
int BT_depth(BTNode *b,int depth) 
{ 
    if(b) 
    { 
        if(b->lchild) 
            BT_depth(b->lchild,depth+1); 
        if(b->rchild) 
            BT_depth(b->rchild,depth+1); 
    } 
    if(depth>max)    
        max=depth; 
        
    return depth; 
} 


int main(){
        


    
}