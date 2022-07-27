package com.company;

public class Memoization {

    private static final int UNKNOWN = -1;

    public static int llis(int[] s){return llis_rec(s,0,0);}

    /**
     * @param s array di interi
     * @return lunghezza della Longest Increasing Subsequence
     */
    public static int llis_Mem(int[] s){
        return llis_Mem_TD(s,0,0);
    }

    /**
     * @param s array di interi
     * @param i indice in cui cercare nell'array
     * @param t numero più grande precedente
     * @return lunghezza della LIS
     */
    private static int llis_rec(int[] s, int i, int t){
        if (i==s.length){
            return 0;
        } else if(s[i] <=t){
            return llis_rec(s,i+1,t);
        } else {
            return Math.max(
                1+llis_rec(s,i+1,s[i]),
                    llis_rec(s,i+1,t)
            );
        }
    }

    private static int llis_MemRec(int[] s, int i, int t, int[][] mem){
        if(mem[i][t] == UNKNOWN) {
            if (i==s.length){
                mem[i][t] = 0;
            } else if(s[i] <=t){
                mem[i][t] =  llis_rec(s,i+1,t);
            } else {
                mem[i][t] =  Math.max(
                        1+llis_rec(s,i+1,s[i]),
                        llis_rec(s,i+1,t)
                );
            }
        } return mem[i][t];
    }

    private static int llis_Gen(int[]s, int i, int j, int[][] mem){
        int n = s.length;
        if(mem[i][j] == UNKNOWN) {
            if (i==n){
                mem[i][j] = 0;
            } else if(s[i] <=s[j]){
                mem[i][j] =  llis_rec(s,i+1,j);
            } else {
                mem[i][j] =  Math.max(
                        1+llis_rec(s,i+1,i),
                        llis_rec(s,i+1,j)
                );
            }
        } return mem[i][j];
    }



    /**
     * @param s array di interi
     * @param i indice di ricerca in [0;lenght(s)]
     * @param t numero maggiore precedente da confrontare
     * @return lunghezza della LIS TOPDOWN
     */
    private static int llis_Mem_TD(int[] s, int i, int t){
        int n=s.length;
        int[][] mem = new int[n+1][n+1];
        for (int r=0;r<=n;r++){
            for (int c=0;c<=n;c++){
                mem[r][c] = UNKNOWN;
            }
        }
        // si imposta t = n seguendo le indicazioni nel file html
        // return llis_MemRec( s,  i,  t,  mem);
        return llis_Gen(s,i,t,mem);

    }








}
