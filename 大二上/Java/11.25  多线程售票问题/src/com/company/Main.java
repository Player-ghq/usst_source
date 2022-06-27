package com.company;

public class Main {

    public static void main(String[] args) throws InterruptedException {
        System.out.println();

        TTT t = new TTT();

        t.setName("jhhhh");

        System.out.println(t.getName());

        t.setPriority(Thread.MIN_PRIORITY);

        t.start();

//        System.out.println();
        for (int i = 0; i < 10; i++) {
            Thread.sleep(1000);
            System.out.println("pai pai" + i);
        }

        t.interrupt();

        // write your code here
    }
}

class TTT extends Thread {

    public void run(){

        while (true) {
            for (int i = 0; i < 100; i++) {
                System.out.println(Thread.currentThread().getName() + "玩游戏   " + i);
            }

            try {
                System.out.println(Thread.currentThread().getName() + "正在休眠");
                Thread.sleep(20000);
            } catch (InterruptedException e) {
                e.printStackTrace();

                System.out.println(Thread.currentThread().getName() + "被interruptl");
            }
        }

    }

}


