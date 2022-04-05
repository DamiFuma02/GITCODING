package com.company;

public class BTR {
    //carattere corrispondente al valore numerico x in A={-1,0,1}
    public static String btdRep(int x) {
        switch (x){
            case -1:
                return "-";
            case 1:
                return "+";
            default:
                return ".";
        }
    }
    //valore numerico corrispondente al carattere
    public static int btdVal(char x) {
        switch (x){
            case '-':
                return -1;
            case '+':
                return 1;
            default:
                return 0;
        }
    }
    //conversione BTR in decimale
    public static int toDec(String s) {
        int k = s.length()-1;
        char currentChar = s.charAt(k);
        if (k == 0) {
            return btdVal(currentChar);
        }
        return (3*toDec(s.substring(0,k)))+btdVal(currentChar);
    }
    //restituisce la cifra delle unità della somma tra due char
    public static char btrDigitSum(char u, char v, char c) {    //u,v caratteri dei numeri,   c = carry = riporto precedente
        switch (u){
            case '-':
                switch (v) {
                    case '-':
                        switch (c){
                            case '-':    //---
                                return '.';
                            case '+':    //--+
                                return '-';
                            default:    //--.
                                return '+';
                        }
                    case '+':
                        switch (c){
                            case '-':    //-+-
                                return '-';
                            case '+':    //-++
                                return '+';
                            default:    //-+.
                                return '.';
                        }
                    default:
                        switch (c){
                            case '-':    //-.-
                                return '+';
                            case '+':    //-.+
                                return '.';
                            default:    //-..
                                return '-';
                        }
                }
            case '+':
                switch (v) {
                    case '-':
                        switch (c){
                            case '-':    //+--
                                return '-';
                            case '+':    //+-+
                                return '+';
                            default:    //+-.
                                return '.';
                        }
                    case '+':
                        switch (c){
                            case '-':    //++-
                                return '+';
                            case '+':    //+++
                                return '.';
                            default:    //++.
                                return '-';
                        }
                    default:
                        switch (c){
                            case '-':    //+.-
                                return '.';
                            case '+':    //+.+
                                return '-';
                            default:    //+..
                                return '+';
                        }
                }
            default:
                switch (v) {
                    case '-':
                        switch (c){
                            case '-':    //.--
                                return '+';
                            case '+':    //.-+
                                return '.';
                            default:    //.-.
                                return '-';
                        }
                    case '+':
                        switch (c){
                            case '-':    //.+-
                                return '.';
                            case '+':    //.++
                                return '-';
                            default:    //.+.
                                return '+';
                        }
                    default:
                        switch (c){
                            case '-':    //..-
                                return '-';
                            case '+':    //..+
                                return '+';
                            default:    //...
                                return '.';
                        }
                }
        }
    }
    //restituisce il riporto delle unità della somma tra due char
    public static char btrCarry(char u, char v, char c) {    //u,v caratteri dei numeri,   c = carry = riporto precedente
        switch (u){
            case '-':
                switch (v) {
                    case '-':
                        switch (c){
                            case '-':    //---
                                return '-';
                            case '+':    //--+
                                return '.';
                            default:    //--.
                                return '-';
                        }
                    case '+':
                        switch (c){
                            case '-':    //-+-
                                return '.';
                            case '+':    //-++
                                return '.';
                            default:    //-+.
                                return '.';
                        }
                    default:
                        switch (c){
                            case '-':    //-.-
                                return '-';
                            case '+':    //-.+
                                return '.';
                            default:    //-..
                                return '.';
                        }
                }
            case '+':
                switch (v) {
                    case '-':
                        switch (c){
                            case '.':    //+-.
                                return '.';
                            case '+':    //+-+
                                return '+';
                            default:    //+--
                                return '.';
                        }
                    case '+':
                        switch (c){
                            case '-':    //++-
                                return '.';
                            case '+':    //+++
                                return '+';
                            default:    //++.
                                return '+';
                        }
                    default:
                        switch (c){
                            case '-':    //+.-
                                return '.';
                            case '+':    //+.+
                                return '+';
                            default:    //+..
                                return '.';
                        }
                }
            default:  //'.'
                switch (v) {
                    case '-':
                        switch (c){
                            case '-':    //.--
                                return '-';
                            case '+':    //.-+
                                return '.';
                            default:    //.-.
                                return '.';
                        }
                    case '+':
                        switch (c){
                            case '-':    //.+-
                                return '.';
                            case '+':    //.++
                                return '+';
                            default:    //.+.
                                return '.';
                        }
                    default:
                        switch (c){
                            case '-':    //..-
                                return '.';
                            case '+':    //..+
                                return '.';
                            default:    //...
                                return '.';
                        }
                }
        }
    }
    //rimuove gli 0 '.' più significativi, quindi all'inizio della stringa
    public static String normalizedBTR(String s) {
        int k = s.length()-1;
        if( k == 0) {
            return s;
        }
        if (s.charAt(0) == '.') {
            return normalizedBTR(s.substring(1));
        } else {
            return s;
        }
    }
    //cifra meno significativa di s
    public static char lsd(String s) {
        int k = s.length();
        if (k==0) {
            //STRINGA VUOTA
            return '.';
        } else {
            return s.charAt(k);
        }
    }
    //tutta la stringa senza lsd
    public static String head (String s) {
        int k = s.length();
        return  (k == 0)? "" : s.substring(0,k-1);
    }
    public static String btrSum(String u, String v) {
        return btrCarrySum(u,v,'.');
    }
    //restitituisce in BTR la somma tra due addendi in BTR
    public static String btrCarrySum(String add1, String add2, char carry) {
        int k1 = add1.length()-1;
        int k2 = add2.length()-1;

        //si aggiungono dei '.' a SX della stringa più corta
        int diff = Math.abs(k1-k2);

        if (k1 > k2) {
            //k1>k2
            for (int i=0; i<diff; i++) {
                add2= "."+add2;
            }
            System.out.println("Allungato add2: "+add2);
            return btrCarrySum(add1,add2,carry);
        } else if (k1 < k2){

            for (int i=0; i<diff; i++) {
                add1= "."+add1;
            }
            System.out.println("Allungato add1: "+add1);
            return btrCarrySum(add1,add2,carry);
        } else if (k1 == 0 || k2 == 0) {
            char unita = btrDigitSum(add1.charAt(k1),add2.charAt(k2), carry);
            char riporto = btrCarry(add1.charAt(k1),add2.charAt(k2),carry) ;
            char[] array = {riporto,unita};
            return new String(array);
        } else {
            //LOOP
            char[] arr = {btrDigitSum(add1.charAt(k1),add2.charAt(k2),carry)};
            String digitSum = new String(arr);
            String sum = btrCarrySum(add1.substring(0,k1),add2.substring(0,k2), btrCarry(add1.charAt(k1),add2.charAt(k2),carry) );

            return normalizedBTR(sum+digitSum);
        }

    }

    // ESERCIZIO 1 31-03-2021
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

}
