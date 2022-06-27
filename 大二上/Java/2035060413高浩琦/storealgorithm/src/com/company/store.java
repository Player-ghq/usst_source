package com.company;


public class store{

    private int head;
    private int tail;
    private int size;

    public store(int head, int tail, int size) {
        this.head = head;
        this.tail = tail;
        this.size = size;
    }


    public store(int head, int size) {
        this.head = head;
        this.tail = head + size - 1 ;
        this.size = size;
    }


    @Override
    public String toString() {
        return "store{" +
                "head=" + head +
                ", tail=" + tail +
                ", size=" + size +
                '}';
    }

    public int getHead() {
        return head;
    }

    public void setHead(int head) {
        this.head = head;
    }

    public int getTail() {
        return tail;
    }

    public void setTail(int tail) {
        this.tail = tail;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }





}
