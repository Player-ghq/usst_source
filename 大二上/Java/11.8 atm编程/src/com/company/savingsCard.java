package com.company;


import java.util.Scanner;

public class savingsCard extends Bank_Atm implements InterfaceCard {



    @Override
    public void login(user p) {

//        Scanner in = new Scanner(System.in);
//        System.out.println("您是储蓄卡用户:");
        loginin(p);


    }


    @Override
    public void deposit(user p) {
        Scanner in = new Scanner(System.in);
        System.out.println("储蓄卡用户存储手续费为0.1%");
        System.out.println("请输入存款金额:");


        p.setCash(p.getCash() + in.nextDouble() * 0.999);
        System.out.println("存款成功!");
        System.out.println("现在余额= " +  p.getCash()) ;
//        depositin(p);

    }

    @Override
    public void getMoney(user p) {
        Scanner out = new Scanner(System.in);

        System.out.println("储蓄卡用户不能超支"  );
        System.out.println("请输入取款金额:");

        while (true){

            double out1 = out.nextDouble();
            if (out1 > p.getCash())
                System.out.println("余额不足请重新输入");
            else {
                p.setCash(p.getCash() - out1);
                System.out.println("取款成功!");
                System.out.println("现在余额= " + p.getCash());
                break;
            }
        }




    }


}




class creditCard extends Bank_Atm implements InterfaceCard{


    @Override
    public void login(user p) {
//        System.out.println("您是信用卡用户:");
        loginin(p);



    }

    @Override
    public void deposit(user p) {
        Scanner in = new Scanner(System.in);
        System.out.println("信用卡存储手续费0.05%");
        System.out.println("请输入存款金额:");


        p.setCash(p.getCash()+ in.nextDouble()*0.9995);
        System.out.println("存款成功!");
        System.out.println("现在余额= " +  p.getCash()) ;


    }

    @Override
    public void getMoney(user p) {
        Scanner out = new Scanner(System.in);
        System.out.println("信用卡用户透支额度为20000:"  );
        System.out.println("请输入取款金额:");


        while (true){
            double out1 = out.nextDouble();
            if ((out1 - 20000)> p.getCash())
                System.out.println("余额不足请重新输入");
            else {
                p.setCash(p.getCash() - out1);
                System.out.println("取款成功!");
                System.out.println("现在余额= " + p.getCash());
                break;
            }
        }

    }
}


class membershipCard extends Bank_Atm implements InterfaceCard{


    @Override
    public void login(user p) {
//        System.out.println("您是尊贵的白金卡用户:");
        loginin(p);


    }

    @Override
    public void deposit(user p) {
        Scanner in = new Scanner(System.in);

        System.out.println("白金卡用户无手续费");
        System.out.println("请输入存款金额:");


        p.setCash(p.getCash() + in.nextDouble());
        System.out.println("存款成功!");
        System.out.println("现在余额= " +  p.getCash()) ;

    }

    @Override
    public void getMoney(user p) {
        Scanner out = new Scanner(System.in);
        System.out.println("白金卡用户可以随意取款"  );
        System.out.println("请输入取款金额:");

        p.setCash(p.getCash() - out.nextDouble());
        System.out.println("取款成功!");
        System.out.println("现在余额= " + p.getCash());



    }
}