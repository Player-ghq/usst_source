package com.company;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.rmi.server.SocketSecurityException;
import java.util.LinkedList;

@SuppressWarnings("all")
public class sever {
    public static void main(String[] args) throws IOException {

        ServerSocket ss=new ServerSocket(8888);

        // 2.监听，返回客户端的Socket对象
        Socket socket =ss.accept();

        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        BufferedReader fileread = new BufferedReader(new FileReader("C:\\Users\\12732\\Desktop\\acount.txt"));
        PrintWriter pw = new PrintWriter(socket.getOutputStream(), true);


        LinkedList<User> users = new LinkedList<>();

        String line;

        while ((line = fileread.readLine()) != null) {
            //把读取到的字符串数据用split()进行分割，得到一个字符串数组
            String[] strArray = line.split(",");
            User s = new User();
            s.setName(strArray[0]);
            s.setPwd(strArray[1]);
            s.setMoney(Integer.parseInt(strArray[2]));
//            s.setAddress(strArray[3]);
            //把学生对象添加到集合
            users.add(s);
        }

        fileread.close();
//
//        for (User user : users) {
//
//            System.out.println(user.toString());
//        }



        System.out.println("等待连接....");

        pw.println("----ATM----");
        //登录界面
        User user = null;

        while (true) {

            boolean bl = false ;

            pw.println("选择: 0.退出 1.登录");
            int flag = Integer.parseInt(bufferedReader.readLine());
            if (flag == 0){
                break;
            }else if (flag == 1){
                bl = true;
            }


            // 登录界面

            while (bl) {

                pw.println("请输入用户名:");
                String username = bufferedReader.readLine();
                pw.println("请输入密码:");
                String pwd = bufferedReader.readLine();

                user = new User(username, pwd);

                boolean flag1 = false;

                for (User user_pri : users) {

                    if (user.getName().equals(user_pri.getName()) && user.getPwd().equals(user_pri.getPwd())) {
                        user.setMoney(user_pri.getMoney());
                        flag1 = true;
                        break;
                    }

                }
//            PrintWriter pw = new PrintWriter(socket.getOutputStream(), true);

                // 7.发送校验结果

                if (flag1) {
                    pw.println("登陆成功");
                    break;
                } else {
                    pw.println("密码错误，重新输入");
                }
            }

            // 对象流的使用


            while (bl) {

                BufferedWriter filewrite = new BufferedWriter(new FileWriter("C:\\Users\\12732\\Desktop\\acount.txt"));

                for (User user1 : users) {

                    filewrite.write(user1.getName() + "," + user1.getPwd() + "," + user1.getMoney());
                    filewrite.newLine();
                    filewrite.flush();

                }

                if (filewrite != null) {

                    filewrite.close();
                }

//            for (User user3 : users) {
//
//                System.out.println(user3.toString());
//
//            }


                pw.println("选择操作: 0.退出 1.账户查询 2.取账 3.存款 4.转账");
                int lp = Integer.parseInt(bufferedReader.readLine());
                switch (lp) {

                    case 1:
//                    new ObjectOutputStream(ss.)
                        search(pw, user);
                        break;
                    case 2:
                        withdraw(bufferedReader, pw, user);

                        break;
                    case 3:
                        saving(bufferedReader, pw, user);

                        break;
                    case 4:
                        transfer(bufferedReader, pw, users, user);
                        break;

                }


                for (User user1 : users) {

                    if (user.getName().equals(user1.getName())) {

                        user1.setMoney(user.getMoney());
                    }

                }

                if (lp == 0) {
                    bl = false;
                    break;
                }

//            filewrite.close();

            }


        }

//        System.out.println(lp);

        System.out.println("系统退出");



        socket.close();
        ss.close();

    }




    public static void search(PrintWriter pw,User user) throws IOException {

        pw.println(user.toString());
//        pw.println();


    }

    public static void withdraw(BufferedReader bufferedReader,PrintWriter pw,User user) throws IOException {


        boolean loop = true;
        int t = 1;
//        pw.println(t);
        while (loop) {

            pw.println("取款金额:");

            int money = Integer.parseInt(bufferedReader.readLine());

            if (money > user.getMoney()) {

                pw.println("余额不足，重新输入");

            } else {

                user.setMoney(user.getMoney() - money);
                pw.println("取款成功，剩余金额: "+ user.getMoney());
                loop = false;
                t = 0;

            }

            pw.println(t);

        }
//        System.out.println();



    }

    public static void saving(BufferedReader bufferedReader,PrintWriter pw,User user) throws IOException {

            pw.println("存款金额:");
            int money = Integer.parseInt(bufferedReader.readLine());
            user.setMoney(user.getMoney() + money);
            pw.println("存款成功，剩余金额:" + user.getMoney());



    }

    public static void transfer(BufferedReader bufferedReader,PrintWriter pw,LinkedList <User>users,User user) throws IOException {


        boolean loop = true;
        int t = 1;
        String username = null;
        while (loop) {
            pw.println("输入转账对象用户名:");
            username = bufferedReader.readLine();
            for (User use_pri : users) {
                if (use_pri.getName().equals(username)) {
                    loop = false;
                    t = 0;
                }
            }

            if (t == 1){
                pw.println("用户名错误，请重新输入");
            }else {
                pw.println("用户名正确！");
            }

            pw.println(t);
        }


        boolean lp = true;
        int flag = 1;
        int money = 0;
        while (lp) {
            pw.println("请输入转账金额:");
            money = Integer.parseInt(bufferedReader.readLine());
            if (money > user.getMoney()) {
                pw.println("余额不足，重新输入");
            } else {
                user.setMoney(user.getMoney() - money);
                pw.println("转账成功，剩余金额:" + user.getMoney());
                flag = 0;
                lp = false;
            }

            pw.println(flag);

        }

        for (User user1 : users) {
            if (user1.getName().equals(username)){
                user1.setMoney(user1.getMoney()+ money);
            }
        }



    }
}
