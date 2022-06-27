#include<stdio.h>
#include<cstdlib>
#include<cstring>
#include<iostream>

using namespace std;

typedef char ElemType;

typedef struct node
{  
    ElemType data;
    struct node *next;

}LinkStack;

void initstack(LinkStack *&ls){
    
    ls = NULL;
}

int push(LinkStack *&ls,ElemType x){

    LinkStack *p;
    p=(LinkStack *)malloc(sizeof(LinkStack));

    p->data = x;
    p->next = ls;
    ls = p;
    free(p);
    cout<< "success"<<endl;
    return  1;
}


void dispstack(LinkStack *ls){

    while (ls != NULL)
    {
        printf("%c ",ls->data);
        ls = ls->next;
    }
    cout << endl;
    
}


int pop(LinkStack *&ls,ElemType x){
    LinkStack *p;
    p=(LinkStack *)malloc(sizeof(LinkStack));
    cout<< "success2"<<endl; 

    if (ls = NULL){
        return 0;
    }else{
        p = ls;
        cout<< "succes222s2"<<endl; 
        x = p->data;
        ls = p->next;
        free(p);

    }
        return 1;

}

int main(){
    LinkStack *ls;
    initstack(ls);
    char s;
    push(ls,'a');
    push(ls,'e');
    push(ls,'c');
    dispstack(ls);

    pop(ls,s);
    printf("%c ",s);
    dispstack(ls);

    return 0;
}

