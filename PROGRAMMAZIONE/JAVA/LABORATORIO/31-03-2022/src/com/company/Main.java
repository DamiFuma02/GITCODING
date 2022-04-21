package com.company;

public class Main {
    // ESERCIZIO 1 31-03-2021
    public static void main(String[] args) {
	// write your code here
        STR_REC proa = new STR_REC();
        String msg = "1111";
        System.out.println(proa.replacement("ciao","cane","ciao mondo ciao mondo ciAo"));

    }

    // RESTITUISCE IL SUCCESSIVO DEL NUMERO PASSATO COME STRINGA
    public static String btrSucc(String btr) {
        int n = btr.length();
        char lsb = btr.charAt(n-1);
        if (n == 1) {
            if (lsb == '+') return "+-";
            else return "+";
        } else {
            String pre = btr.substring(0,n-1);
            if (lsb == '+') return btrSucc(pre)+"-";
            return pre+ ((lsb == '-')? "." : "+") ;
        }
    }

    //
}
