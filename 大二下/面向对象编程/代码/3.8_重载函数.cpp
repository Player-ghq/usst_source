#include<iostream>



using namespace std;
//�������غ�������дһ������ʵ�ֶ������������͸�������ƽ���͵���ȡ��


int Sumsquares(int a,int b){

    return a*a+b*b;

}

double Sumsquares(double a,double b){

    //double c = a*a + b*b;

    return a*a + b*b;

}



int main(){

    int a,b ;
    cin >> a >> b;
    printf("%d \n",Sumsquares(a,b));
    cout << Sumsquares(a,b)<< endl;


    double c,d;
    cin >> c >> d;
    printf("%f \n",Sumsquares(c,d));
    cout << Sumsquares(c,d)<< endl;


}

