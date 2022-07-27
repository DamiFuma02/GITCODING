package com.company;

public class Towers {


    // Variabili di istanza ...
    private int[] site;
    private String moves;


    // Costruttore ...

    public Towers(int n){
        moves = "";
        site = new int[n+1] ;
    }


    // PROCEDURE CHE MODIFICANO LO STATO
    public void put( int disk, int rod ){
        site[disk] = rod;
    }


    public void move( int disk, int dst ){
        moves = moves + " " + site[disk] + "->"  + dst;
        site[disk] = dst;

    }

    // METODI CHE RITORNANO LE PROPRIETA
    public int height(){
        return this.site.length-1;
    }



    public int site( int disk ){
        return this.site[disk];
    }





    public String moves(){
        return this.moves;
    }


    public int transit( int disk, int dst ) {
        return ( 6 - site(disk) - dst );
    }

}
