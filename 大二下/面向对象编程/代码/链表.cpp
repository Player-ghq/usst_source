#include <iostream>
#include <cstdio>
using namespace std;

typedef struct List
{
    int data;
    struct List *next;

    List(int datal)
    {
        data = datal;

    }

}Node, *Link;



void printlk(Link head)
{
    Link p=head->next;

 	while( p != NULL)
    {
            printf("%d\n",p->data);

            p=p->next;

    }
}

int main() {

    //Link t1,t2,t3;

    Node t1 = new Node(1);

    printf("%d\n",t1->data);

    Nodet2 = new Node(2);

    printf("%d\n",t2->data);

    Node t3 = new Node(3);

    printf("%d\n",t3->data);
    //free(t3);
    printf("已完成\n");



    t1->next = t2;
    t2->next = t3;

    Link head ;
    head->next = t1;

    printf("已完成\n");

    printlk(head);

    printf("已完成\n");


    //printlk(head);

    //printf("%d",InsList(head,2,3));


//   printlk(p );


    return 0;



}

