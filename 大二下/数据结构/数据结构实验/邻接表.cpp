#include<stdio.h>
#include<iostream>

#define MAXVEX 100 
#define INF 65536 
typedef char VertexType;

typedef struct edgenode
{  
    int adjvex;			  //相邻点序号
    int weight;			  //边的权值
    struct edgenode *nextarc;	  //下一条边的顶点
} ArcNode;		//边结点


typedef struct vexnode
{  VertexType data;		 
   ArcNode *firstarc;
} VHeadNode;			  //表头指针


typedef struct 
{   int vexnum, edgenum;       //顶点数和边数
    VHeadNode adjlist[MAXVEX]; //单链表头结点数组
}AdjGraph;			           //邻接表



//将邻接矩阵转化成邻接表
void CreateGraph(AdjGraph *&G,int A[][MAXVEX],int vexnum,int edgenum)
{   
    ArcNode *p;
    G=(AdjGraph *)malloc(sizeof(AdjGraph));
    G->vexnum = vexnum; 
    G->edgenum = edgenum;

    for (int i = 0;i < G->vexnum;i++)
        G->adjlist[i].firstarc=NULL;

    for (int i = 0;i < G->vexnum;i++)
        for (int j= G->vexnum - 1;j >= 0;j--)
        {   
            if (A[i][j]>0 && A[i][j]<INF)
            {   
                p=(ArcNode *)malloc(sizeof(ArcNode));  //创建结点p
                p->adjvex = j;
                p->weight = A[i][j];
                p->nextarc = NULL;
                //结点始终在在最后一个
                p->nextarc = G->adjlist[i].firstarc;  //头插法插入p
                G->adjlist[i].firstarc = p;
            }
        }
}


//广度遍历   vi是初始节点
void BFS(AdjGraph *G,int vi) 
{   
    int v,visited[MAXVEX];

    ArcNode *p;

    int Qu[MAXVEX];//循环队列
    int front=0,rear=0;	

    for (int i = 0;i < G->vexnum ;i++)  
    {    visited[i]=0;}	

    printf("%d ",vi);		    	//访问初始顶点
    visited[vi]=1;

    rear = (rear+1) % MAXVEX;
    Qu[rear] = vi;              	//初始顶点进队

    while (front != rear)
    {   
        front = (front+1) % MAXVEX;
        v = Qu[front];			    //出队顶点v
        p = G->adjlist[v].firstarc;	//v的第一个相邻点
        while (p != NULL)			//v的所有相邻点
        {   
            if ( visited[p->adjvex] == 0)
            {  
                printf("%d ",p->adjvex);
                visited[p->adjvex] = 1;
                rear = (rear+1) % MAXVEX;
                Qu[rear] = p->adjvex;
            }
            p = p->nextarc;	        //一层一层来
        }
    }
}



int main(){



}



