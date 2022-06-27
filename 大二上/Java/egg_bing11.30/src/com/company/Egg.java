package com.company;


public class Egg {

    int num = 0;
    int costnum = 0;

    public void pri(int t) {

        if (t == 1) {
            if (this.num < this.costnum)
                System.out.println("制作了一个蛋饼，今日已做" + num + "份蛋卷， 当前还有" + (this.costnum - this.num) + "份蛋卷要做!");
            else
                System.out.println("制作了一个蛋饼，今日已做" + num + "份蛋卷,当前还有" + (this.num - this.costnum) + "份蛋卷待售!");
        } else if (t == 2) {
            if (this.num >= this.costnum)
                System.out.println("一个客人来了,今日已售" + num + "份蛋卷，当前还有" + (this.num - this.costnum) + "份蛋卷待售!");
            else
                System.out.println("一个客人来了,今日已售" + num + "份蛋卷，当前还有" + (this.costnum - this.num) + "份蛋卷要做");
        }
    }


        public synchronized void work() {
                if(this.num - this.costnum==3)
                    {
                        try {
                            wait();
                            Thread.sleep(3000);
                        } catch (InterruptedException ex) {
                            ex.printStackTrace();
                        }
                    }

                this.num++;
                pri(1);

            }

        public synchronized void get() {

            this.costnum++;

            pri(2);

            notify();

        }


}
