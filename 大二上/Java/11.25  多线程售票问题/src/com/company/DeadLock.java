package com.company;

import java.util.Locale;
import java.util.Scanner;

@SuppressWarnings("all")
public class DeadLock {

    public static void main(String[] args) {
//
//        A a = new A();
//        B b = new B(a);
//        b.start();
//        a.start();
        T t = new T();
        Thread thread1 = new Thread(t);
        thread1.setName("t1");
        Thread thread2 = new Thread(t);
        thread2.setName("t2");
        thread1.start();
        thread2.start();


    }



}


class T implements Runnable{

    private int money = 10000;
    @Override
    public void run() {
        while (true){


            //
            synchronized (this) {
                if (money < 1000) {

                    System.out.println(Thread.currentThread().getName() +" 表示余额不足");
                    break;
                }

                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }

            money -= 1000;
            System.out.println( Thread.currentThread().getName() + " 取出了1000  当前余额 = " + money);


        }
    }
}


class A extends Thread{

    private boolean loop = true;

    public boolean isLoop() {
        return loop;
    }

    public void setLoop(boolean loop) {
        this.loop = loop;
    }

    @Override
    public void run() {
        while (loop) {

            System.out.println((int) (Math.random() * 100 + 1));

            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }
    }
}



class B extends Thread{


    private final A a;
    private final Scanner scanner = new Scanner(System.in);
    public B(A a){

        this.a = a;
    }



    @Override
    public void run() {

        while (true) {
            System.out.println("输入指令 ");
            char key = scanner.next().toUpperCase().charAt(0);

            if (key == 'Q'){

                a.setLoop(false);
                System.out.println("B线程退出");
                break;

            }

        }
    }
}