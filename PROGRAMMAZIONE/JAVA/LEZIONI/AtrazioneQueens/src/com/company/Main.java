package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        int n = 6;
        System.out.println(NQueens.nSol(n));
        GenSchemeList<String> a = NQueens.listOfSol(n);
        System.out.println(a.toString());

        drawBoards(a,n);

    }

    /**
     * @param B LISTA DI STRINGHE DI CONFIGURAZIONI DELLE SOLUZIONI
     * @param n DIMENSIONE SCACCHIERA
     */
    public static void drawBoards(GenSchemeList<String> B, int n){
        // gui.setQueens(String s)
        ChessboardView gui = new ChessboardView(n);
        while(!B.isNull()){
            gui.setQueens(B.car());
            B = B.cdr();
        }
    }



}
