#include<stdio.h>
#include<iostream>
#define MAXVEX 100 

typedef char VertexType;

int visited[MAXVEX];
//两种方法 一种是顶点和边分开  一种是顶点和边合起来

//合起来
typedef struct
{
	VertexType Vex[MAXVEX];//顶点表
	int Edges[MAXVEX][MAXVEX];  //边带权不带权均可
	int vexnum, edgenum;      //顶点数和边数

}MGraph1;


void CreateGraph1(MGraph1 &g,int A[][MAXVEX],VertexType B[MAXVEX],int vexnum,int edgenum)
{       
    g.vexnum = vexnum; 
    g.edgenum = edgenum;
    for (int i = 0;i < vexnum; i++)
    {   for (int j = 0;j < vexnum; j++)
        {
            g.Edges[i][j] = A[i][j];
        }
    }
    for (int i = 0; i < MAXVEX; i++)
    {
        g.Vex[i] = B[i];
    }
    

}


//顶点和边和起来
typedef struct vertex
{  
    int adjvex;
    VertexType data;

}VType;			 //顶点类型


typedef struct graph
{  
    VType Vex[MAXVEX];	 //顶点集合
    int Edges[MAXVEX][MAXVEX];	 //边的集合
    int vexnum, edgenum;      //顶点数和边数

}MatGraph2;			 //图的邻接矩阵类型


void DFS(MGraph1 g, int i ){
    
    visited[i]=1;

    printf("%c ", g.Vex[i]);
    for(int j = 0;j < g.vexnum;j++){
        if(g.Edges[i][j] == 1 && !visited[j]) //边存在且顶点未被访问，递归
            DFS(g, j);
    }
}

void DFSTraverse(MGraph1 g){
    
    for(int i = 0;i < g.vexnum ;i++)
        visited[i] = 0;

    for(int i = 0;i < g.vexnum;i++)
    {   if( !visited[i] )
            DFS(g, i);
        }
}


int main(){



    
}