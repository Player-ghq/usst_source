
package com.company;

public class Main {

    public static void main(String[] args) {

        Egg egg = new Egg();
        new Produce(egg).start();
        new consumer(egg).start();


        // write your code here
    }
}
