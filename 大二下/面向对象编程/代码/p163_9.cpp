#include<iostream>


using namespace std;

void fun1(int *p1){

    p1 = new int(10);
    cout << *p1 <<endl;



}

void fun2(int * &p2){

    p2 = new int(5);
    cout << *p2 <<endl;



}

int main(){


    int *p = new int(1);
    fun1(p);
    cout << " " << *p << endl;
    fun2(p);
    cout << " " << *p << endl;

    return 0 ;

}
