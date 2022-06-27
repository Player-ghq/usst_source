package com.company;

        import java.util.Scanner;
        import java.util.regex.Matcher;
        import java.util.regex.Pattern;

public class Main {

//    static Scanner input = new Scanner(System.in);
    //
    public static Student[] arr = new Student[3];
    static String check = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";

    static void mainMenu() {

        System.out.println("------1. 录入学生成绩                -----");
        System.out.println("------                             -----");
        System.out.println("------2.查询学生成绩                 -----");
        System.out.println("------                             -----");
        System.out.println("------0.退出                        -----");

    }

    public static void main(String[] args) {

        flag:
        while (true) {
            mainMenu();
            Scanner in = new Scanner(System.in);
            Scanner fd = new Scanner(System.in);
            //Student st = new Student();
            int a = in.nextInt();
            switch (a) {
                case 1:
                    writeInfo();
                    break;
                case 2:
                    System.out.println("请输入查询的姓名");
                    String b = fd.next();
                    search(b);
                    break;
                case 0:
                    break flag;
            }

        }
        System.out.println("谢谢使用");

    }


    public static void writeInfo() {

        Scanner in1 = new Scanner(System.in);
        Scanner in2 = new Scanner(System.in);
        Scanner in3 = new Scanner(System.in);
        for (int i = 0; i < 3; i++)
            arr[i] = new Student();
        String a, c;
        double b;

        for (int i = 0; i < 3; i++) {

            System.out.println("请输入第" + (i + 1) + "个学生的姓名");
            arr[i].stuName = in1.next();

            System.out.println("请输入第" + (i + 1) + "个学生的分数");
            arr[i].stuScore = in2.nextDouble();

            do {

                System.out.println("请输入第" + (i + 1) + "个学生的邮箱");
                arr[i].stuEmail = in3.next();


            } while (panduan(arr[i].stuEmail));

        }
    }


    public static void search(String fd) {


        for (int i = 0; i < 3; i++) {

            if (arr[i].getStuName().contains(fd)) {
                System.out.println("姓名:" + arr[i].getStuName() + "\n得分:" + arr[i].getStuScore() + "\nemail:" + arr[i].stuEmail);
            }
        }

    }

    private static boolean panduan(String t) {


        Pattern regex = Pattern.compile(check);

        Matcher matcher = regex.matcher(t);
        boolean isMatched = matcher.matches();

        return isMatched;
        //  email = input.nextLine();
        // Pattern emailPattern = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
        //    Matcher matcher = emailPattern.matcher(email);
//        if (matcher.find()) {
//            System.out.println();
//            return true;
//        } else {
//            System.out.println("閭杈撳叆閿欒");
//            return false;
//        }
    }
}