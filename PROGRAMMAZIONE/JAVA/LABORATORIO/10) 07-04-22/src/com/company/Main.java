package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        StringSList s = BTRList("+-",5);
        System.out.println(s.listToString());
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
    // Restituisce una lista di n elementi successivi a btr compreso come primo elemento
    public static StringSList BTRList(String btr, int n){
        StringSList nuova = new StringSList();
        if (n==0) return new StringSList();   // LISTA NULLA
        // PRIMA STRINGA INSERITA
        nuova = nuova.cons(btr);
        int i = n-1; // CONTATORE INIZIALE
        while (i>0){
            btr = btrSucc(btr);
            nuova = nuova.reverse().cons(btr).reverse();
            i--;
        }
        return nuova;
    }

}
