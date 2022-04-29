package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        /*int n = 6;
        System.out.println(NQueens.nSol(n));
        GenSchemeList<Board> nuova = NQueens.listOfSol(n);
        System.out.println(nuova.listToString());*/
        Board B = new Board(4);
        B = B.addQueen(1,4);
        B = B.addQueen(3,3);

    }
}
