package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        //System.out.println(Giugno.llmdMem(new double[] { 7.5, 4.5, 2.7, 4.5, 7.5 }));
        //System.out.println(Giugno.recDP(8,5, 12));
        Towers t = new Towers(3);
        t.put(3,1);
        t.put(2,1);
        t.put(1,1);
        //System.out.println(Hanoi.hanoi(t, 2));
        System.out.println(Luglio.llds(new double[]{0.2, 0.4, 0.3, 0.25}));
    }
}
