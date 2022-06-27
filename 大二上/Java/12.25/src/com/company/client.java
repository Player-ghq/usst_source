package com.company;

import com.sun.source.tree.WhileLoopTree;

import javax.swing.text.StyledEditorKit;
import java.io.*;
import java.net.Socket;
import java.util.Calendar;
import java.util.LinkedList;

@SuppressWarnings("all")
public class client {

    public static void main(String[] args) throws IOException, ClassNotFoundException {
        Socket s = new Socket("192.168.43.231", 8888);

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(s.getInputStream()));
        // 6.得到服务器返回结果并输出
//        String result = bufferedReader.readLine();
        PrintWriter out = new PrintWriter(s.getOutputStream(), true);

        //  ---ATM---
        System.out.println(bufferedReader.readLine());
//        System.out.println(bufferedReader.readLine());


        // 登录开始

        while (true) {

            boolean loop = false;

            System.out.println(bufferedReader.readLine());
            int flag = Integer.parseInt(br.readLine());

            out.println(flag);

            if (flag == 0){
                break;
            }else if ( flag == 1){
                loop =true;
            }





            while (loop) {

                System.out.println(bufferedReader.readLine());


                out.println(br.readLine());

                System.out.println(bufferedReader.readLine());
//            String pwd = );
                out.println(br.readLine());

                String result = bufferedReader.readLine();

                System.out.println(result);

                if (result.equals("登陆成功")) {
                    loop = false;
                }
            }

            //输入选择
            loop = true;

            while (loop) {


                System.out.println(bufferedReader.readLine());
                int tt = Integer.parseInt(br.readLine());
                out.println(tt);

                switch (tt) {
                    case 1:
                        System.out.println(bufferedReader.readLine());
                        break;
                    case 2:
                        withdraw(bufferedReader, br, out);
                        break;
                    case 3:
                        saving(bufferedReader, br, out);
                        break;
                    case 4:
                        transfer(bufferedReader, br, out);
                        break;
                }

                if (tt == 0) {
                    System.out.println("exit");
                    loop = false;

                }

            }
//        br.readLine();



        }


        System.out.println("tuichu");


//        PrintWriter out = new PrintWriter(s.getOutputStream(), true);
        // 4.发送数据

//        BufferedReader sbr = new BufferedReader(new InputStreamReader(s.getInputStream()));
        // 6.得到服务器返回结果并输出


        s.close();

    }



    public static void withdraw(BufferedReader bufferedReader,BufferedReader br,PrintWriter out) throws IOException  {

        boolean loop = true;

        int t = 1;

        while ( t == 1 ) {

                System.out.println(bufferedReader.readLine());

                out.println(br.readLine());

                System.out.println(bufferedReader.readLine());

                t = Integer.parseInt(bufferedReader.readLine());

        }

    }

    public static void saving(BufferedReader bufferedReader,BufferedReader br,PrintWriter out) throws IOException {


        System.out.println(bufferedReader.readLine());
        out.println(br.readLine());
        System.out.println(bufferedReader.readLine());

//        saving(bufferedReader,pw,user);
    }

    public static void transfer(BufferedReader bufferedReader,BufferedReader br,PrintWriter out) throws IOException {


        int t = 1;
        while (t == 1) {

            System.out.println(bufferedReader.readLine());
            out.println(br.readLine());
            System.out.println(bufferedReader.readLine());

            t = Integer.parseInt(bufferedReader.readLine());
        }

        int flag = 1;

        while (flag == 1 ){

            System.out.println(bufferedReader.readLine());
            out.println(br.readLine());
            System.out.println(bufferedReader.readLine());
            flag = Integer.parseInt(bufferedReader.readLine());

        }


    }

}
