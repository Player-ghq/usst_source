package com.company;

import java.util.Random;

@SuppressWarnings("All")
public class consumer extends Thread{

    private Egg share;

    Random r= new Random();

    public consumer(Egg egg) {
        this.share=egg;
    }
    public void run()
    {
           do{
            try {
                Thread.sleep(r.nextInt(4000)+2000);
//                Thread.sleep((int)(3*1000));
                share.get();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            
           } while(share.costnum<10);

        System.out.println("客人人数为"+ share.costnum  +"达到上限");
    }
}
