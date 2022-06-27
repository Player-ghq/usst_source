#include<iostream>




void p(int n)
{int k;
    if(n)
    {   p(n-1);
        for(k=n;k>=1;k--) printf("%d",k);
        printf("\n");
    }
}

int main(){


    p(5);
}