#include <iostream>

#include <cstdio>

using namespace std;

int main()
{

    int a,b,c;

    int min ;


    cin >> a >>b >> c ;

    min = a ;

    if( b < min ){
       min = b ;

       if(c < min){
         min = c;
       }
    }

    printf("min = %d" , min);


    return 0;


}

