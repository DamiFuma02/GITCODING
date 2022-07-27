package com.company;

import java.util.function.BiPredicate;


public class Board {
    // RIGHE E COLONNE
    private static final String ROWS = " 123456789ABCDEF";
    private static final String COLS = " abcdefghijklmno";

    // VARIABILI DI ISTANZA
    private final int size;   // dimensione board
    private final int queens; //numero di regine piazzate
    private final GenSchemeList<Integer> rowCod;
    private final GenSchemeList<Integer> colCod;

    /**
     * a1, b2, c3, ...
     */
    private final GenSchemeList<Integer> diagLeft;

    /**
     *  altoSX -> basso DX
     */
    private final GenSchemeList<Integer> diagRight;


    /**
     * rappresenta un valore procedurale che verrà applicato quando vengono passati i parametri Integer
     */
    private final BiPredicate<Integer,Integer> minaccia;
    // RAPPRESENTAZIONE TESTUALE DELLA CONFIGURAZIONE DELLE REGINE
    private final String config;


    public Board(int n){
        size = n;
        queens = 0;
        // NESSUNA POSIZIONE FINACCIATA
        minaccia = (x,y) -> false;
        config = " ";
        rowCod = new GenSchemeList<Integer>();
        colCod = rowCod;
        diagLeft = rowCod;
        diagRight = rowCod;
    }

    /**
     * @param B scacchiera a cui aggiungere la regina
     * @param i colonna in cui aggiungere (abcd...)
     * @param j riga in cui aggiungere (1234...)
     * @return Board in cui è aggiunta la regina
     */
    private Board(Board B, int i, int j){
        size = B.getSize();
        queens = B.getQueens()+1;
        minaccia = ( u, v ) -> (    (u == i) ||                // minaccia la riga i
                                    (v == j) ||                // minaccia la colonna j
                                    (u-v == i-j) ||            // minaccia le diagonali i-j e i+j
                                    (u+v == i+j) ||
                                    B.sottoScacco(u,v)     // minaccia delle regine in board
                                );
        config = B.getConfig() + COLS.charAt(j) + ROWS.charAt(i) + " ";
        rowCod = B.rowCod.reverse().cons(i).reverse();
        colCod = B.colCod.reverse().cons(j).reverse();
        diagLeft = B.diagLeft.reverse().cons(i-j).reverse();
        diagRight = B.diagRight.reverse().cons(i+j).reverse();
    }


    /**
     * @return dimensione della scacchiera nxn
     */
    public int getSize(){return size;}


    /**
     * @return numero di regine sulla scacchiera
     */
    public int getQueens(){return queens;}

    /**
     * @return configurazione stringa delle regine in Board
     */
    private String getConfig(){return config;}

    /**
     * @param i colonna
     * @param j riga
     * @return true/false se la casella inserita (i,j) è minacciata
     */
    public boolean sottoScacco(int i, int j) {
        return minaccia.test(i,j);
    }

    /**
     * @param i colonna
     * @param j riga
     * @return board con la regina aggiunta in (i,j)
     */
    public Board addQueen(int i, int j){
        return new Board(this,i,j);
    }

    /**
     * @return conofigurazione finale della board
     */
    public String toString(){
        return "[ " + config + " ]";
    }

    public GenSchemeList<Integer> getColCod() {
        return colCod;
    }

    public GenSchemeList<Integer> getDiagLeft() {
        return diagLeft;
    }

    public GenSchemeList<Integer> getDiagRight() {
        return diagRight;
    }

    public GenSchemeList<Integer> getRowCod() {
        return rowCod;
    }
}
