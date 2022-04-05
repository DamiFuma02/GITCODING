package com.company;

public class Main {

    public static int josephus( int n ) {

        Tavolo rt = new Tavolo( n );     // configurazione iniziale

        while ( rt.numeroCavalieri() > 1 ) {     // finche' c'e' piu' di un commensale a tavola

            Tavolo ext = rt.serviSidro();  // un commensale viene servito ed esce
            rt = ext.passaBrocca();                    // la brocca viene passata di mano
        }
        return rt.chiHaLaBrocca();               // alla fine rimane un cavaliere con la brocca
    }


    public static void main( String args[] ) {

        int n = 10;

        for ( int k=1; k<=n; k=k+1 ) {
            System.out.println( josephus(k) );
        }
    }
}
