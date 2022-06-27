#include<stdio.h>
#include<cstdlib>

typedef char ElemType;

typedef struct QNode
{
    ElemType data;
    struct QNode *next;

}QNode;

typedef struct
{
    QNode *front;
    QNode *rear;

}LinkQuene;

void initquene(LinkQuene *&lq){
    
    lq->front = lq->rear = NULL;

}

int enquene(LinkQuene *&lq,ElemType x){
    QNode *s;
    s = (QNode *)malloc(sizeof(QNode));
    s->data = x;
    s->next = NULL;
    if (lq->front == NULL){
        lq->front = lq->rear = s;
    }else{
        lq->rear->next = s;
        lq->rear = s;

    }
    return 1;
    
}


int deQuene(LinkQuene *&lq,ElemType &x){
    QNode *s;
    s = (QNode *)malloc(sizeof(QNode));
    if (lq->front == NULL){
        return 0;
    }

    s = lq->front;
    x = s->data ;
    if (lq->front == lq->rear){
        lq->front = lq->rear = NULL;
    }
    else{
        lq->front = lq->front->next;
        
    }
    return 1;

}


int main(){

    LinkQuene *lq;
    initquene(lq);
    

}
