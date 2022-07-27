package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        Memoization m = new Memoization();

        String a = "cortigiana";
        String b = "triglia";


        //System.out.println(m.lcsMem(a,b));
        System.out.println(m.lcsDP(a,b));
        //System.out.println(m.lcsDp2(a,b));
    }
}
