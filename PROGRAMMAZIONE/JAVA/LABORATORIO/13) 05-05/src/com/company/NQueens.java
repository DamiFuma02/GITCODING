package com.company;

public class NQueens {
    // DATA UNA SCACCHIERA nxn INSERIRE IL NUMERO MASSIMO DI REGINE SENZA CHE ESSE SI MINACCINO TRA LORO
    public static final GenSchemeList<Board> NULL_LIST = new GenSchemeList<Board>();
    public static int nSol(int n){
        return nCompl(new Board(n));
    }
    public static int nCompl(Board B){
        int size = B.getSize();
        int queens = B.getQueens();
        if (queens == size) return 1;
        else {
            int r = queens+1;
            int count = 0;
            for (int c=1;c<=size;c++){
                if (!B.sottoScacco(r,c)){
                    count += nCompl(B.addQueen(r,c));
                }
            }
            return count;
        }
    }
    public static GenSchemeList<Board> listOfSol(int n){
        return listOfCompl(new Board(n));
    }
    public static GenSchemeList<Board> listOfCompl(Board B){
        int size = B.getSize();
        int queens = B.getQueens();
        if (queens == size) return NULL_LIST.cons(B);
        else {
            int r = queens+1;
            GenSchemeList<Board> sol = NULL_LIST;
            for (int c=1;c<=size;c++){
                if (!B.sottoScacco(r,c)){
                    sol = sol.append(listOfCompl(B.addQueen(r,c)));
                }
            }
            return sol;
        }
    }
}   // FINE CLASSE NQUEENS
