package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        int n = 5;
        System.out.println(NQueens.nSol(n));
        GenSchemeList<Board> nuova = NQueens.listOfSol(n);
        System.out.println(nuova.toString());
        drawBoards(nuova);
    }
    //
    public static void drawBoards(GenSchemeList<Board> B){
        // gui.setQueens(String s)
        ChessboardView gui = new ChessboardView(B.car().getSize());
        int l = B.listLength();
        while(!B.isNull()){
            String s =  B.car().toString();
            B = B.cdr();
            gui.setQueens(s);
        }
    }



}
