package com.company;

import javax.imageio.plugins.tiff.ExifTIFFTagSet;
import java.awt.*;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {

    private static Student[] arr = new Student[3];

    public static void main(String[] args) {
        // write your code here

        Scanner myScanner = new Scanner(System.in);

        while (true) {
            menu();
//            Scanner in = new Scanner(System.in);
            Scanner find = new Scanner(System.in);
//            //Student st = new Student();
            int a = myScanner.nextInt();
            switch (a) {
                case 1:
                    writeInfo();
                    break;
                case 2:
                    System.out.println("-------------");
                    System.out.println("请输入查询姓名");
                    search(find.next());
                    break;
                case 3:
                    System.exit(0);
            }

        }


    }

    static void menu() {
        System.out.println("-------------");
        System.out.println("1.录入信息");
        System.out.println("2.查询成绩");
        System.out.println("3.退出");
        System.out.println("-------------");

    }


    static void writeInfo() {

//        Student[] arr = new Student[3];
        String regex = "\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";

        for (int i = 0; i < arr.length; i++) {

            arr[i] = new Student();

        }


//        for (int i=0 ; i<3;i++)
//           arr[i]= new Student();
        String a, c;
        double b;
        Scanner input = new Scanner(System.in);

        for (int i = 0; i < arr.length; i++) {

            System.out.println("输入姓名:");
            arr[i].setStuName(input.next());

            System.out.println("输入成绩:");


            arr[i].setStuGrade(input.nextDouble());
            while (true) {


                System.out.println("输入邮箱:");

                arr[i].setStuEmail(input.next());

                boolean match = arr[i].getStuEmail().matches(regex);

                if (match) {
                    System.out.println("邮箱合法，录入完成");
                    break;
                } else {
                    System.out.println("邮箱不合法，请重新输入");

                }
            }
        }
    }


    public static void search(String fd) {


        for (int i = 0; i < arr.length; i++) {
            if (arr[i].getStuName().contains(fd)) {
                System.out.println("姓名:" + arr[i].getStuName() + "\n成绩:" +
                        arr[i].getStuGrade() + "\nemail:" + arr[i].getStuEmail());
            }
        }

    }


public static class Student {

    String stuName;
    double stuGrade;
    String stuEmail;

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public double getStuGrade() {
        return stuGrade;
    }

    public void setStuGrade(double stuGrade) {
        this.stuGrade = stuGrade;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }
 }
}




//public class Main {
//
//    static Scanner input = new Scanner(System.in);
//    public static Student[] arr = new Student[3];

//    public static void main(String[] args) {
//
//        flag:
//        while (true) {
//            mainMenu();
//            Scanner in = new Scanner(System.in);
//            Scanner fd = new Scanner(System.in);
//            //Student st = new Student();
//            int a = in.nextInt();
//            switch (a) {
//                case 1:
//                    writeInfo();
//                    break;
//                case 2:
//                    System.out.println("璇疯緭鍏ヤ綘瑕佹煡璇㈢殑涓滆タ锛�");
//                    //fd.next();
//                    search(fd.next());
//                    break;
//                case 0:
//                    break flag;
//            }
//
//        }
//        System.out.println("璋㈣阿浣跨敤");
//
//    }
//
//
//    public static void writeInfo() {
//
//        Scanner in1 = new Scanner(System.in);
//        Scanner in2 = new Scanner(System.in);
//        Scanner in3 = new Scanner(System.in);
//        for (int i=0 ; i<3;i++)
//            arr[i]= new Student();
//        String a, c;
//        double b;
//
//        for (int i = 0; i < 3; i++) {
//
//            System.out.println("璇疯緭鍏ュ鐢�" + (i + 1) + "鐨勫鍚�:");
//            arr[i].stuName = in1.next();
//
//            System.out.println("璇疯緭鍏ュ鐢�" + (i + 1) + "鐨勬垚缁�:");
//            arr[i].stuScore = in2.nextDouble();
//
//            do {
//                System.out.println("璇疯緭鍏ュ鐢�" + (i + 1) + "鐨勯偖绠�:");
//
//                arr[i].stuEmail = in3.next();
//
//
//            }while (panduan(arr[i].stuEmail));
//
//        }
//    }
//
//
//
//    public static void search(String fd) {
//
//
//        for (int i = 0; i < 3; i++) {
//
//            if (arr[i].getStuName().contains(fd)) {
//                System.out.println("濮撳悕:" + arr[i].getStuName() + "\n鍒嗘暟:" + arr[i].getStuScore() + "\nemail:" + arr[i].stuEmail);
//            }
//        }
//
//    }
//
//    private static boolean panduan(String()){
//
//
//        Pattern regex = Pattern.compile(check);
//
//        Matcher matcher = regex.matcher(String);
//        boolean isMatched = matcher.matches();
//
//        return isMatched;
//
//
//        //  email = input.nextLine();
//        // Pattern emailPattern = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
//        //    Matcher matcher = emailPattern.matcher(email);
//        if(matcher.find()) {
//            System.out.println();
//            return true;
//        }
//        else {
//            System.out.println("閭杈撳叆閿欒");
//            return false;
//        }
//    }

