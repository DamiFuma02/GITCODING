package com.company;

import java.util.function.BiPredicate;

public class Board {
    // RIGHE E COLONNE
    private static final String ROWS = " 123456789ABCDEF";
    private static final String COLS = " abcdefghijklmno";

    // VARIABILI DI ISTANZA
    private final int size;   // dimensione board
    private final int queens; //numero di regine piazzate
    // LE DUE POSIZIONI SONO MINACCIATE?
    private final BiPredicate<Integer,Integer> minaccia;
    // RAPPRESENTAZIONE TESTUALE DELLA CONFIGURAZIONE DELLE REGINE
    private final String config;


    public Board(int n){
        size = n;
        queens = 0;
        // NESSUNA POSIZIONE FINACCIATA
        minaccia = (u,v) -> false;
        config = " ";
    }

    // AGGIUNGE UNA REGINA
    private Board(Board B,int i, int j){
        size = B.getSize();
        queens = B.getQueens()+1;
        minaccia = ( u, v ) -> (    (u == i) ||                // minaccia la riga i
                                    (v == j) ||                // minaccia la colonna j
                                    (u-v == i-j) ||            // minaccia le diagonali i-j e i+j
                                    (u+v == i+j) ||
                                    B.sottoScacco(u,v)     // minaccia delle regine in board
                                );
        config = B.getConfig() + COLS.charAt(j) + ROWS.charAt(i) + " ";
    }

    public int getSize(){return size;}

    public int getQueens(){return queens;}

    private String getConfig(){return config;}

    public boolean sottoScacco(int i, int j) {
        return minaccia.test(i,j);
    }

    public Board addQueen(int i, int j){
        return new Board(this,i,j);
    }

    public String BoardConfig(){
        return "[ " + config + " ]";
    }





}
