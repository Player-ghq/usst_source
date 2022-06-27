package com.company;

public class user {

    private String count;
    private String code;
    private String name;
    private double cash ;

    public int getCard() {
        return card;
    }

    public void setCard(int card) {
        this.card = card;
    }

    private int card ;

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getCash() {
        return cash;
    }

    public void setCash(double cash) {
        this.cash = cash;
    }

    public user (String count, String code, String name, double cash) {
        this.count = count;
        this.code = code;
        this.name = name;
        this.cash = cash;
    }

    public user(){

    }



}
