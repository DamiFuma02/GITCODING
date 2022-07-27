package com.company;

public class Memoization_Prec {

    private final static int UNKNOWN = 0;

    private static int fib(int n){
        if (n<2)return 1;
        return fib(n-2)+fib(n-1);
    }


    /**
     * @param n indice finale della ricerca
     * @return valore n-esimo della sequenza
     */
    public static long fibMem(int n){
        long[] mem = new long[n+1];
        for (int i=0; i<=n;i++){
            mem[i] = UNKNOWN;
        }
        return fibRec(n,mem);
    }


    private static long fibRec(int n, long[] mem){
        if (mem[n] == UNKNOWN)
            mem[n] = (n<2)?  1 :  fibRec(n-2,mem) + fibRec(n-1,mem);
        return mem[n];
    }

    /* PROBLEMA DEI PERCORSI DI MAHNATTAN */

    /**
     * @param i passi ORIZZ
     * @param j passi VERT
     * @return mumero di percorsi
     */
    public static long mahnMem(int i, int j){
        long[][] mem = new long[i][j];
        for (int r = 0; r<=i; r++){
            for (int c = 0; c<=j; c++){
                mem[r][c] = UNKNOWN;
            }
        }
        return mahnRec(i,j,mem);
    }

    private static long mahnRec(int i, int j, long[][] mem){
        if (mem[i][j] == UNKNOWN)
            mem[i][j] = (i == 0 || j == 0)? 1 : mahnRec(i-1,j, mem) + mahnRec(i,j-1, mem);
        return mem[i][j];
    }


    private static long mahnattan(int i, int j){
        return (i == 0 || j == 0)? 1 : mahnattan(i-1,j) + mahnattan(i,j-1);
    }

}
