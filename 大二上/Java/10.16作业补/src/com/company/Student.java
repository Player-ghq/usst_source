package com.company;

//public class Student {


//package com.company;
//import java.util.Scanner;

public class Student {
    public String stuName;
    public double stuScore;
    public String stuEmail;


    public void Students(String stuName, double stuScore, String stuEmail) {

        this.stuName = stuName;
        this.stuScore = stuScore;
        this.stuEmail = stuEmail;

    }

    public String getStuName() {
        return stuName;
    }

    public double getStuScore() {
        return stuScore;
    }

    public String getStuEmail() {
        return stuEmail;
    }

}