package com.company;


@SuppressWarnings("all")
public class SellTicket {

    public static void main(String[] args) throws InterruptedException {

        SellTicket01 sellTicket01 = new SellTicket01();
        SellTicket01 sellTicket02 = new SellTicket01();
        SellTicket01 sellTicket03 = new SellTicket01();
//        SellTicket01 sellTicket02 = new SellTicket01();
//        Thread thread = new Thread();
//        thread.start(sellTicket01);
        new Thread(sellTicket01).start();
        new Thread(sellTicket01).start();
        new Thread(sellTicket01).start();
//        Thread.sleep(20);
//        new Thread(sellTicket02).start()
    }


}

class SellTicket01 implements Runnable{



//    private int ticketNum = 100;

    private boolean loop = true;

    private int ticketNum = 100;

    public boolean isLoop() {
        return loop;
    }

    public void setLoop(boolean loop) {
        this.loop = loop;
    }



    public synchronized void sell() {
        if (ticketNum <= 0) {
            System.out.println("售票结束...");
            loop = false;
            return;
        }

        //休眠50ms
        try {
            Thread.sleep(20);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("窗口" + Thread.currentThread().getName() + "售出一张票" + "剩余票数 = "  + (--ticketNum));

    }





    public synchronized void run(){

        while (loop) {

            sell();
//
//            if (ticketNum <= 0) {
//                System.out.println("售票结束...");
//                break;
//            }
//
//            //休眠50ms
//            try {
//                Thread.sleep(500);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
        }
//            System.out.println("还在运行" + (++count));




        }

    }


