package com.company;


public class Board {
    // RIGHE E COLONNE
    private static final String ROWS = " 123456789ABCDEF";
    private static final String COLS = " abcdefghijklmno";

    // VARIABILI DI ISTANZA
    private final int size;   // dimensione board
    private int queens; //numero di regine piazzate

    private int[] rowAttacks;
    private int[] colAttacks;
    private int[] dg1Attacks;
    private int[] dg2Attacks;

    // RAPPRESENTAZIONE TESTUALE DELLA CONFIGURAZIONE DELLE REGINE
    private  String config;


    public Board(int n){
        size = n;
        queens = 0;
        rowAttacks = new int[n];
        colAttacks = new int[n];
        dg1Attacks = new int[2*n-1];
        dg2Attacks = new int[2*n-1];
        config = "";

        for (int i=0;i<n;i++){
            rowAttacks[i] = 0;
            colAttacks[i] = 0;
            dg1Attacks[i] = 0;
            dg2Attacks[i] = 0;
        }
        for (int i=n;i<(2*n-1);i++){
            dg1Attacks[i] = 0;
            dg2Attacks[i] = 0;
        }
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

        return (    (rowAttacks[i-1] > 0) ||
                    (colAttacks[j-1] > 0) ||
                    (dg1Attacks[i-j+size-1] > 0) ||
                    (dg2Attacks[i+j-2]>0)
                );
    }

    private String locCode(int i, int j){
        return " " + COLS.charAt(j) + ROWS.charAt(i) + " ";
    }

    /**
     * @param i colonna
     * @param j riga
     * @return board con la regina aggiunta in (i,j)
     */
    public void addQueen(int i, int j){
        queens+=1;
        config = config + locCode(i,j);
        rowAttacks [i-1]        = rowAttacks [i-1] + 1;
        colAttacks [j-1]        = colAttacks [j-1]+1;
        dg1Attacks[i-j+size-1]  = dg1Attacks[i-j+size-1]+1;
        dg2Attacks[i+j-2]       = dg2Attacks[i+j-2]+1;
    }

    /**
     * @param i riga
     * @param j colonna
     */
    public void removeQueen(int i, int j){
        queens-=1;
        rowAttacks [i-1]        = rowAttacks [i-1] - 1;
        colAttacks [j-1]        = colAttacks [j-1]-1;
        dg1Attacks[i-j+size-1]  = dg1Attacks[i-j+size-1]-1;
        dg2Attacks[i+j-2]       = dg2Attacks[i+j-2]-1;
        // toglie da CONFIG LA CONFIGURAZIONE DELLA REGINA
        int k = config.indexOf(locCode(i,j));
        // se k==0 config --> ""              k+4 perchè locCode produce una Stringa lunga 4 caratteri
        config = config.substring(0,k) + config.substring(k+4);
    }


    /**
     * @return conofigurazione finale della board
     */
    public String toString(){
        return "  " + config + "  ";
    }





}
