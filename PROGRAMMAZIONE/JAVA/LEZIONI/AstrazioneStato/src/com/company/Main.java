package com.company;

public class Main {

    public static int josephus( int n ) {

        roundTable rt = new roundTable( n );     // configurazione iniziale
        //
        while (rt.getSize() >2){
            rt.serveNeighbour();
            rt.passJug();
        }
        return rt.getJug();

    }


    public static void main( String args[] ) {
        System.out.println( josephus(1500));
    }
}
