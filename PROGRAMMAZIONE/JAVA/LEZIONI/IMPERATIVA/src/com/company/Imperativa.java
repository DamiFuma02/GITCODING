package com.company;

import java.util.List;

public class Imperativa {
    //sottrazione ricorsiva
    //MASSIMO COMUNE DIVISORE
    public static int MCD(int x, int y) {    //x >= y
        while (x  != y) {
            if(x<y) y = y - x;
            else  x = x - y;
        }
        return x;
    }
    //SOLUZIONE ALTERNATIVA ALGORITMO DI EUCLIDE
    public static int MCDEuclide(int x, int y) {
        if (x < y)  return MCDEuclide(y, x);
        else {
            int r = x % y;
            if (r == 0) return y;
            else return MCD(y,r);
        }
    }
    //minimo comune multiplo
    public static int mcm(int x, int y) {   // x, y > 0
        int c = x;
        while (c % y > 0) {
            //C = multiplo di x
            c = c+x;
        }
        return c;
    }
    //SOLUZIONE ALTERNATIVA
    public static int mcm2(int x, int y) {
        int p = 0;
        if (MCD(x,y) == 1){
            System.out.println("I numeri inseriti ("+x+" , "+y+") sono COPRIMI \nmcm(x,y) = x*y");
            return x*y;
            //evita di fare eseguire il ciclo FOR fino alla fine
        }
        for(int i = 1; i<=y; i++) {
            if (i*x % y == 0) {
                p = i*x;
                break;   //ESCE DAL BRANCH FOR
            }
        }
        return p;
    }
    //VERIFICARE SE UN NUMERO è PRIMO
    public static boolean primo(int x) { //x > 2
       for (int i = 2; i< x; i++) {
           if (x % i == 0)  return false;
       }
       return true;
    }
    //SOLUZIONE ALTERNATIVA
    public static boolean primo2(int x) {
        int d = 3;
        boolean p = true;
        if (x % 2 == 0)  return false;
        //se non è divisibile per 2 allora si possono escludere tutti i d PARI
        //RICERCA DEL DIVISORE...
        while (p && (d < x)) {
            if (x % d == 0) p = false;
            else  d = d+2;   //vengono saltati tutti i numeri pari
        }
        return p;
    }
    //RICORSIONE
    public static int UFO(int x) {
        int[] u = new int[x+1];
        //genera un vettore lungo x+1
        u[1] = 1;
        for (int k = 2; k <= x; k++)  {
            int a = (k%2==0)? -1 : 1;
            u[k] = 2*u[k/2] +a;
        }
        return u[x];
    }
    public static int UFO2(int x) {
        if (x == 1) return 1;
        int a = (x%2==0)? -1 : +1;
        return 2*UFO2(x/2) + a;
    }
    //SORTED INS
    public static void sortedIns(double[] v) {
        for (int k=0; k<v.length; k++) {
            double x = v[k];
            int i = (k-1);
            while ( (i >=0) && (x < v[i]) ) {
                v[i+1] = v[i];
            }
            v[i+1] = x;
        }
        for (int i = 0; i<v.length; i++) {
            System.out.println(v[i]);
        }
        return;
    }


}
