package com.company;

public class Main {
    //PER ESSERE VISIBILE DA OGNI FUNZIONE
    static Imperativa programma = new Imperativa();

    public static void main(String[] args) {
	// write your code here
        //System.out.println(calcolaMCD(54,36));
        //System.out.println(calcolamcm(12,32));
        //System.out.println(primo(101));
        //System.out.println(calcolaUFO(12));
        //double[] arr = new double[] {1.23, 0.23, 4.23, 1,2};
        //programma.sortedIns(arr);
        //System.out.println("CIAO");
        //for (int i = 0; i<arr.length; i++) {
          //  System.out.println(arr[i]);
        //}
        System.out.println("CIAO");
        int a = programma.MCDEuclide(12,6);
        System.out.println(a);
    }

    public static String calcolaMCD(int x, int y){
        System.out.println("Calcolo del MASSIMO COMUNE DIVISORE --> MCD(x,y)");

        int MCD1 = programma.MCD(x,y);
        int MCD2 = programma.MCDEuclide(x,y);
        if(MCD1 == MCD2) {
            return ("MCD("+x+","+y+") = "+MCD1);
        } else {
            return ("ERRORE i due programmi non producono lo stesso risultato");
        }
    }
    public static String calcolamcm(int a, int b) {
        System.out.println("Calcolo del minimo comune multiplo --> mcm(x,y)");
        int mcm1 = programma.mcm(a, b);
        int mcm2 = programma.mcm2(a, b);
        if (mcm1 == mcm2) {
            return ("mcm(" + a + "," + b + ") = " + mcm2);
        } else {
            return ("ERRORE i due programmi non producono lo stesso risultato");
        }
    }
    public static String primo(int c) {
        System.out.println("Verifica se il numero inserito è PRIMO");

        boolean p1 = programma.primo(c);
        boolean p2 = programma.primo(c);
        if(p1 == p2) {
            String msg = (p1 == true)? "PRIMO":"NON PRIMO";
            return ("Il numero inserito ("+c+") è "+msg);
        } else {
            return ("ERRORE i due programmi non producono lo stesso risultato");
        }
    }
    public static String calcolaUFO(int x) {
        int u1 = programma.UFO(x);
        int u2 = programma.UFO2(x);
        if (u1 == u2) return "UFO("+x+") = "+String.valueOf(u1);
        else  return ("ERRORE i due programmi non producono lo stesso risultato");

    }
}
