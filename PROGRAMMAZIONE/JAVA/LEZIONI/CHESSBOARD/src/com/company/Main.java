package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        System.out.println(NQueens.nSol(4));
        GenSchemeList<Board> nuova = NQueens.listOfSol(4);
        System.out.println(nuova.listToString());
    }
}
