package com.company;

public class Main {

    public static String josephus( int n ) {

        roundTable rt = new roundTable( n );     // configurazione iniziale
        //
        while (rt.getSize() >2){
            rt = rt.serveNeighbour();
            rt = rt.passJug();
        }
        return rt.servingKnights().ListToString();
    }


    public static void main( String args[] ) {
        System.out.println( josephus(1500));
    }
}
