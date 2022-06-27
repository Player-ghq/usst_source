#include<stdio.h>
#include<iostream>

typedef struct snode 
{  char data;
   struct snode *next;
} LiString;


void StrAssign(LiString *&s,char cstr[])
{   int i;LiString *r,*p;
    s=(LiString *)malloc(sizeof(LiString));
    r=s;		//r始终指向尾节点
    for (i=0;cstr[i]!='\0';i++){    
        p=(LiString *)malloc(sizeof(LiString));
        p->data=cstr[i];
        r->next=p;
        r=p;
    }
    r->next=NULL;
}


void DispStr(LiString *s)
{  LiString *p=s->next;
    while (p!=NULL)
    {  printf("%c",p->data);
    p=p->next;
    }
    printf("\n");
}


int main(){
    LiString *s;
    char str [] = "abcddge";
    StrAssign(s,str);
    DispStr(s);

}
