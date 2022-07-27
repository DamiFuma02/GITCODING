package com.company;
import java.util.function.BiPredicate;
public class Board {
    private static final String ROWS = " 123456789ABCDEF";
    private static final String COLS = " abcdefghijklmno";
    private final int size;   // dimensione board
    private final int queens; //numero di regine piazzate
    /**
     * coppie (i,j) = (r,c) delle coordinate di regine nella scacchiera
     */
    private final GenSchemeList<GenSchemeList<Integer>> queensCoords;
    /**
     * rappresenta un valore procedurale che verrà invocato quando vengono passati i parametri
     */
    private final BiPredicate<Integer,Integer> minaccia;
    private final String config;   // RAPPRESENTAZIONE TESTUALE DELLA CONFIGURAZIONE DELLE REGINE
    public Board(int n){
        size = n;
        queens = 0;
        minaccia = (x,y) -> false;   // NESSUNA POSIZIONE MINACCIATA
        config = " ";
        queensCoords = new GenSchemeList<>();
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
        GenSchemeList<Integer> l = new GenSchemeList<>();
        l = l.cons(j).cons(i);    // list( i , j )
        queensCoords = B.queensCoords.reverse().cons(l).reverse();
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
        if (queensCoords.isNull()) return false;
        GenSchemeList<Integer> primo = queensCoords.car();
        GenSchemeList<GenSchemeList<Integer>> resto = queensCoords.cdr();
        // CONTROLLO MIACCIA
        int u = primo.car();
        int v = primo.reverse().car();
        while (!((i == u) || (j == v) || (i - j == u - v) || (i + j == u + v))){
            // CASELLA I;J NON MINACCIATA; CONTROLLO DELLA PROSSIMA REGINA
            if (resto.isNull())return false;
            primo = resto.car();
            u = primo.car();
            v=primo.cdr().car();
            resto = resto.cdr();
        } return true;
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
        return " " + config + " ";
    }
    public String getQueensCoords(){
        return queensCoords.toString();
    }
}
