package com.company;

import com.sun.source.tree.WhileLoopTree;

import java.util.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class best {

    public static void main(String[] args) {
	// write your code here

        store bigstore = new store(0,32766,32767);

        int putadd =0;
//        System.out.println();
        System.out.println(bigstore.toString());


        System.out.println("input APPLICATION: 30000");
        if (bigstore.getSize() >  30000){

            System.out.println("SUCCESS!!");

            putadd = bigstore.getSize()-30000;
            System.out.println("ADDRESS = " + putadd);
        }else {
            System.out.println("FALSE!!  TOO LARGE!!");
        }

        Scanner sc = new Scanner(System.in);


//        bigstore.getTail()

        List <store> stores = new ArrayList<>();

//        List <store> pri_stores = new ArrayList<>();

        stores.add(new store(0,2766,2767));

        System.out.println(stores.toString());

        System.out.println("best or first :");

        String way = sc.next();

        boolean inway = way.equals("best");

        while (true){

            System.out.print("Accept or Assign: ");

            String choice = sc.next();

            if (choice.equals("ac")){

                System.out.println("Input adr and size:");
                System.out.print("adr:");
                int adr = sc.nextInt();
                System.out.print("size:");
                int size = sc.nextInt() ;

                int nil = adr + size - 1;
                boolean loop = true;

                for (store store : stores) {

                    if ((store.getHead() >= nil && store.getHead() <= adr)
                            ||(store.getTail() <= nil && store.getTail() >= adr)
                            ||(store.getHead() < adr && store.getTail() > nil)){

                        loop = false;
                        System.out.println("cross the border!");
                        break;
                    }
                    if (store.getTail()+1 == adr){
                        store.setSize(store.getSize()+size);
                        store.setTail(store.getTail()+size);
                        loop = false;

                    }
                    if (store.getHead() -1 == nil){
                        store.setHead(adr);
//                        store.setTail();
                        store.setSize(store.getSize() + size);
                        loop = false;
                    }


//                    if(store.g)
                }

                if (loop){

                        stores.add(new store(adr,size));

                }

                if (inway) {
                    stores.sort(new Comparator<store>() {
                        @Override
                        public int compare(store o1, store o2) {

                            Integer a1 = o1.getSize();
                            Integer a2 = o2.getSize();
                            return a1.compareTo(a2);

                        }

                    });
                }


//                for (store store : pri_stores) {
//                    System.out.println(store.toString());
//                }
//
                for (store store : stores) {
                    System.out.println(store.toString());
                }

            }


            if (choice.equals("as")){
                System.out.print("input APPLICATION:");

                int application = sc.nextInt();
                boolean loop = true;

                for (store store : stores) {

                    if (store.getSize() >= application){

                        store.setSize(store.getSize() - application);
                        store.setTail(store.getTail() - application);
                        System.out.println("SUCCESS!!");
                        System.out.println("ADDRESS = " + store.getSize());
                        loop = false;
                        break;
//                        store.setTail(store.getTail() - application);
                    }
                }

                if (loop){

                    System.out.println("TOO large application");
                }


                if (inway) {
                    stores.sort(new Comparator<store>() {
                        @Override
                        public int compare(store o1, store o2) {

                            Integer a1 = o1.getSize();
                            Integer a2 = o2.getSize();
                            return a1.compareTo(a2);
                        }
                    });
                }


                for (store store : stores) {
                    if (store.getSize() > 0) {
                        System.out.println(store.toString());
                    }
                }

            }

            if (choice.equals("EOF")){
                break;
            }


        }

    }

}




