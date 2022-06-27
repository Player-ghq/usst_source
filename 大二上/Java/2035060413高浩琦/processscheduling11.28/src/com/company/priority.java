package com.company;
import java.util.HashSet;
import java.util.LinkedList;

class PRR{
    int remaintime,elaspedtime=0,count=0,servetime,priority;
    String state="W";
    public PRR(int servetime){
        this.remaintime=servetime;
        this.servetime=servetime;
        this.priority=50-this.remaintime;
    }
    public boolean input(PRR[] a){
        for (int i=0;i<5;i++){
            if (a[i].remaintime!=0){
                return true;
            }
        }
        return false;
    }
}
public class priority {
    public static void main(String[] args) {
        int timeslice=1;

        //设置各个进程的运行时间
        PRR[] P=new PRR[5];
        P[0]=new PRR(3);
        P[1]=new PRR(2);
        P[2]=new PRR(4);
        P[3]=new PRR(3);
        P[4]=new PRR(3);

        //定义完成队列finishquery；等待队列waitquery；定义job队列
        HashSet<Integer> pfinishedquery=new HashSet<>();
        HashSet<Integer> pwaitline=new HashSet<>();
        LinkedList<PRR> job=new LinkedList<>();
        job.add(P[0]);
        job.add(P[1]);
        job.add(P[2]);
        job.add(P[3]);
        job.add(P[4]);

        //首次输出未运行的进程队列
        System.out.println("作业\t\telaspedtime\t\tcount\t\tremaintime\t\tpriority\t\tstate");
        for (int i=0;i<job.size();i++){
            System.out.println("P"+i+"\t\t"+P[i].elaspedtime+"\t\t\t"+P[i].count+"\t\t\t\t"+P[i].remaintime+"\t\t\t\t"+P[i].priority+"\t\t\t\t"+P[i].state);
        }
        int tem=P[0].priority;

        //程序运行部分
        while (P[0].input(P)) {
            for (int i = 0; i < job.size(); i++) {
                if (P[i].priority > tem)
                    tem = P[i].priority;
            }
            for (int j = 0; j < job.size(); j++) {
                if (tem == P[j].priority) {
                    if (P[j].state.equals("F")) {
                        continue;
                    }
                    P[j].remaintime -= timeslice;
                    P[j].elaspedtime += timeslice;
                    P[j].state = "R";
                    P[j].count++;
                    P[j].priority = 50 - P[j].remaintime;
                    if (P[j].remaintime <= 0) {
                        P[j].state = "F";
                        P[j].elaspedtime = P[j].servetime;
                        P[j].remaintime = 0;
                        P[j].priority = 0;
                        pfinishedquery.add(j);
                    }
                    System.out.println("作业\t\telaspedtime\t\tcount\t\tremaintime\t\tpriority\t\tstate");
                    for (int n = 0; n < job.size(); n++) {
                        System.out.println("P" + n + "\t\t\t\t" + P[n].elaspedtime + "\t\t\t" + P[n].count + "\t\t\t\t" + P[n].remaintime + "\t\t\t\t" + P[n].priority + "\t\t\t\t" + P[n].state);
                    }
                    if (P[j].remaintime != 0) {
                        P[j].state = "W";
                    }
                    for (int m = 0; m < job.size(); m++) {
                        if (P[m].remaintime != 0)
                            pwaitline.add(m);
                    }
                    System.out.println("wait\t\t" + pwaitline);
                    System.out.println("finish\t\t" + pfinishedquery);
                    for (int m = 0; m < job.size(); m++) {
                        pwaitline.remove(j);
                    }
                    break;
                }
            }
            tem=0;
        }
    }
}
