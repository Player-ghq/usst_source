#include<iostream>


using namespace std;

void fun(int x = 0, int y = 0){


    cout << "x = " << x << endl;
    cout << "y = " << y << endl;
    cout << x+y <<endl;



}

int main(){


    fun(10);
    fun(1,2);

    return 0 ;

}
