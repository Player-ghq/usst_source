package com.company;

import com.sun.source.tree.WhileLoopTree;

import java.awt.*;
import java.sql.SQLOutput;
import java.util.Objects;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // write your code here


        Scanner myScanner = new Scanner(System.in);

        user p = new user();




        while (true) {
            menu();


            Scanner find = new Scanner(System.in);

            switch (myScanner.nextInt()) {
                case 1:

                    Bank_Atm.Creat_count(p);

                    break;
                case 2:

                    atm(p);


                    break;
                case 3:

                    System.out.println("====pos机界面===zsa");
                    Pos.loginin(p);
                    Pos.resume(p);
                    break;

                case 4:
                    System.exit(0);

            }

        }


    }

    public static void menu() {

        System.out.println("银行系统");
        System.out.println("1.开户");
        System.out.println("2.atm");
        System.out.println("3.pos消费");
        System.out.println("4.退出");


    }


    public static void cradmenu() {

        System.out.println("您的卡类型为:");
        System.out.println("1.储蓄卡");
        System.out.println("2.信用卡");
        System.out.println("3.白金卡");

    }


    public static void atmmenu() {

        System.out.println("选择操作:");
//        System.out.println("1.登录");
        System.out.println("1.存钱");
        System.out.println("2.取钱");
        System.out.println("3.查询余额");
        System.out.println("4.返回");

    }

    public static void userinfo(user p ){
        System.out.println("现在账户余额" + p.getCash());


    }


    public static void atm(user p) {


        Scanner input = new Scanner(System.in);
        System.out.println("==========");
        System.out.println("进入atm");

        Bank_Atm bank = new Bank_Atm();

//        cradmenu();
        switch (p.getCard()) {
                case 1:
                    bank = new savingsCard();
                    break;
                case 2:
                    bank = new creditCard();
                    break;
                case 3:
                    bank = new membershipCard();
                    break;
                default:
                    System.out.println();
//                    break flag1;

        }
//


        boolean bool = true;
        bank.login(p);
        while (bool) {
            atmmenu();
            switch (input.nextInt()) {
                case 1:

                    bank.deposit(p);
                    break;
                case 2:

                    bank.getMoney(p);
                    break;
                case 3:
                    userinfo(p);
                    break;
                case 4:
                    bool = false;
                    break;
                default:
                    System.out.println("default again please");
                    break ;

            }
//            label1:
//                 System.out.println("");
        }




        }



    }








class Bank_Atm{

//
//    public void login(){
//
//    }
    public void login(user p){

    }


    public void loginin(user p){

        Scanner in = new Scanner(System.in);
        do {
            System.out.println("输入账号");
            String count = in.next();
            System.out.println("输入密码");
            String pwd = in.next();

            if (count.equals(p.getCount()) && pwd.equals(p.getCode()))
                break;
            else
                System.out.println("账号或密码错误请重新输入");
        }while (true);

        System.out.println("登录成功");

    }


    public void deposit(user p){

    }

    public void getMoney(user p){

    }




    public static void Creat_count(user p) {


        Scanner input = new Scanner(System.in);

        System.out.println("确认卡:1.储蓄卡2.信用卡3.白金卡");
        p.setCard(input.nextInt());
//        String card1 ;

        System.out.println(" 确认账号 ");
        p.setCount(input.next());

        while (true) {
            System.out.println(" 确认密码 ");
            p.setCode(input.next());

            System.out.println(" 再次确认密码 ");

            if (!Objects.equals(input.next(), p.getCode()))
                System.out.println("密码不正确,重新输入");
            else
                break;
        }

        System.out.println(" 存入金额 ");
//        System.out.println("");
        p.setCash(input.nextDouble());

    }


}


class Pos {
//
//    Scanner myScanner = new Scanner(System.in);
//
//    double money ;
//
//    String account ;
//    String pwd ;
//
//    public void input(){
//
//        System.out.println("输入密码");
//        pwd = myScanner.next();
//        System.out.println("输入账号");
//        account = myScanner.next();
//        System.out.println("输入金额");
//        money = myScanner.nextDouble();
//
//    }
    public static void loginin(user p){

        Scanner in = new Scanner(System.in);
        do {
            System.out.println("输入账号");
            String count = in.next();
            System.out.println("输入密码");
            String pwd = in.next();

            if (count.equals(p.getCount()) && pwd.equals(p.getCode()))
                break;
            else
                System.out.println("账号或密码错误请重新输入");
        }while (true);

        System.out.println("Pos登录成功");

    }
    public static void resume(user p){

        Scanner out = new Scanner(System.in);
        System.out.println("pos机消费");
        System.out.println("请输入取款金额:");


        while (true){
            double out1 = out.nextDouble();
            if (out1 > p.getCash())
                System.out.println("余额不足请重新输入");
            else {
                p.setCash(p.getCash() - out1);
                System.out.println("消费成功!");
                System.out.println("现在余额= " + p.getCash());
                break;
            }
        }
//        System.out.println(请输入);


    }


}