package com.company;
import java.util.*;

class  RR{
    int remaintime,elaspedtime=0,count=0,servetime;
    String state="W";
    public  RR(int servetime){
        this.remaintime=servetime;
        this.servetime=servetime;
    }
}



public class schedule extends NullPointerException {

    public static void main(String[] args) {

        int timeslice=2;

        //设置各个进程的运行时间
        RR[]p=new RR[5];
        p[0]=new RR(3);
        p[1]=new RR(2);
        p[2]=new RR(4);
        p[3]=new RR(2);
        p[4]=new RR(1);

        //定义完成队列finishquery；等待队列waitquery；定义job队列
        HashSet<Integer> finishedquery=new HashSet<>();
        HashSet<Integer> waitline=new HashSet<>();
        LinkedList <RR> job= new LinkedList<>();
        job.add(p[0]);
        job.add(p[1]) ;
        job.add(p[2]);
        job.add(p[3]);
        job.add(p[4]);

        //首次输出未运行的进程队列
        System.out.println("作业\t\telaspedtime\t\tcount\t\tremaintime\t\tstate");
        for (int i=0;i<job.size();i++){
            System.out.println("P"+i+"\t\t"+p[i].elaspedtime+"\t\t\t"+p[i].count+"\t\t\t\t"+p[i].remaintime+"\t\t\t\t"+p[i].state);
        }

        //程序运行部分
        for (int m=0;m< job.size();m++){
            for (int i=0;i< job.size();i++){
                if (p[i].state.equals("F"))
                {continue;}
                p[i].remaintime-=timeslice;
                p[i].elaspedtime+=timeslice;
                p[i].state="R";
                p[i].count++;
                if (p[i].remaintime<=0)
                {p[i].state="F";p[i].elaspedtime=p[i].servetime;p[i].remaintime=0;
                    finishedquery.add(i);}
                System.out.println("作业\t\telaspedtime\t\tcount\t\tremaintime\t\tstate");
                for (int j=0;j< job.size();j++)
                { System.out.println("P"+j+"\t\t\t\t"+p[j].elaspedtime+"\t\t\t"+p[j].count+"\t\t\t\t"+p[j].remaintime+"\t\t\t\t"+p[j].state);}
                if(p[i].remaintime!=0)
                {p[i].state="W";}
                for (int j=0;j< job.size();j++){
                    if (p[j].remaintime!=0)
                        waitline.add(j);
                }
                System.out.println("wait\t\t"+waitline);
                System.out.println("finish\t\t"+finishedquery);
                for (int j=0;j< job.size();j++){
                    waitline.remove(j);
                }
            }
        }
    }
}
