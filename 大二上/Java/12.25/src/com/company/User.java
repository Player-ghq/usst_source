package com.company;

import java.io.Serializable;

public class User implements Serializable {

    private String name ;
    private String pwd;

    private int money;

    public User(String name, String pwd) {
        this.name = name;
        this.pwd = pwd;
    }

    public User(String name, String pwd, int money) {
        this.name = name;
        this.pwd = pwd;
        this.money = money;
    }

    public User() {

    }

    @Override
    public String toString() {
        return "User{" +
                "name= '" + name + '\'' +
                ", money=" + money +
                '}';
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
