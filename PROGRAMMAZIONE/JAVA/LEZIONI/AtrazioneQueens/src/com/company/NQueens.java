package com.company;

public class NQueens {
    // DATA UNA SCACCHIERA nxn INSERIRE IL NUMERO MASSIMO DI REGINE SENZA CHE ESSE SI MINACCINO TRA LORO
    public static final GenSchemeList<Board> NULL_LIST = new GenSchemeList<Board>();






    public static GenSchemeList<String> listOfSol(int n){
        return listOfCompl(new Board(n));
    }

    public static GenSchemeList<String> listOfCompl(Board B){
        int size = B.getSize();
        int queens = B.getQueens();
        if (queens == size) {
            // SALVATAGGIO DI B

            return (new GenSchemeList<String>()).cons(B.toString());
        }
        else {
            int r = queens+1;
            GenSchemeList<String> sol = new GenSchemeList<>();
            for (int c=1;c<=size;c++){
                if (!B.sottoScacco(r,c)){
                    B.addQueen(r,c);
                    sol = sol.append(listOfCompl(B));
                    B.removeQueen(r,c);
                }
            }
            return sol;
        }
    }

    public static int nSol(int n){
        return nCompl(new Board(n));
    }


    public static int nCompl(Board B){
        int n = B.getSize();
        int q = B.getQueens();
        if (q == n){
            return 1;
        } else {
            int count = 0;
            int i = q+1;
            for (int j=1;j<=n;j++){
                if (!B.sottoScacco(i,j)){
                    B.addQueen(i,j);
                    count += nCompl(B);
                    B.removeQueen(i,j);
                }
            }
            return count;
        }
    }

}   // FINE CLASSE NQUEENS
