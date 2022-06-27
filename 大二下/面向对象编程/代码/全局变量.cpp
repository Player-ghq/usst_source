#include <iostream>

#include <string>

using namespace std;

//#define pi 3.14


int &Fun(int &x, int &y);

int main(){

    int *p = NULL , *t;

    int i ;


    p = new int[10];

    if (p == NULL){

        cout << "222" << endl;
       // return;
    }else{
        for(int i = 0;i<10;i++){

            p[i]=100+i;
        }
    }

    cout << p[0] <<endl;

    for(t=p;t<p+10;t++){
        cout << *t << " ";

    }
    delete [] p;
   return 0;
}





int &Fun(int &x, int &y){

    return x;

}

//请在此处加入对变量n的定义，并初始化为0

