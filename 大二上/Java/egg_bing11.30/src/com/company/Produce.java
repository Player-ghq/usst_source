
package com.company;
@SuppressWarnings("All")
public class Produce extends Thread{
    private Egg share;

    public Produce(Egg share) {
        this.share = share;
    }

    public void run()
    {
        for(int i=1;i<=10;i++)
        {
            try 
            {
                Thread.sleep(3 * 1000);
                share.work();
            } catch (InterruptedException ex) {
                ex.printStackTrace();
            }
            
        }

        System.out.println("卖完了!!!  不做了!!!");
    }
}
