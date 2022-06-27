#include<iostream>

#include<stdio.h>


#define MaxSize 100
typedef struct{   
    char data[MaxSize];
    int length;
} SqString;


void StrAssign(SqString &s,char cstr[])//s为引用型参数
{  int i;
    for (i=0;cstr[i]!='\0';i++)
    s.data[i]=cstr[i];

    s.length=i;
}
void DispStr(SqString s)
{   int i;
    if (s.length>0)
    {   for (i=0;i<s.length;i++){   
            printf("%c",s.data[i]);
        }
        printf("\n");
    }
}





int main(){
    SqString s;
    char str[] = "fff";
    StrAssign(s,str);


    DispStr(s);



}