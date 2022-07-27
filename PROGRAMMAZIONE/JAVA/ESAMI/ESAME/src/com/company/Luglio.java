package com.company;

public class Luglio {
    // Length of the Longest Damping Subsequence
    public static int llds( double[] s ) {
        return lldsRec( s, 0, Double.NaN, Double.NaN ); // NaN = not a number (predefinito per double)
    }
    private static int lldsRec( double[] s, int i, double u, double v ) {
        if ( i == s.length ) { // coda di s vuota
            return 0;
        } else if ( Double.isNaN(u) || // u non è un numero
                ((Math.min(u,v) < s[i]) && (s[i] < Math.max(u,v))) ) {
            return Math.max( 1+lldsRec(s,i+1,v,s[i]), lldsRec(s,i+1,u,v) ); // s[i] può essere scelto o meno
        } else {
            return lldsRec( s, i+1, u, v ); // s[i] non può essere scelto
        }
    }

    private static final int UNKNOWN = -1;

    public static int lldsMem(double[] s){
        int n = s.length;
        int[][] mem = initStruct(n);
        return lldsRec(s,0,n,n,mem);
    }


    private static int lldsRec(double[] s, int i, int j, int k, int[][] mem){
        if (mem[j][k] == UNKNOWN){
            int n = s.length;
            if (i==n){
                mem[j][k] = 0;
            } else if ((Math.min(j,k) < s[i]) && (s[i] < Math.max(j,k))){
                mem[j][k] =  Math.max( 1+lldsRec(s,i+1,j,i,mem), lldsRec(s,i+1,j,k,mem) );
            } else {
                mem[j][k] =  lldsRec( s, i+1, j, k,mem ); // s[i] non può essere scelto
            }
        }
        return mem[j][k];
    }



    private static int[][] initStruct(int n) {
        int[][] mem = new int[n+1][n+1];
        for (int r=0;r<=n;r++)
            for (int c=0;c<=n;c++)
                mem[r][c] = UNKNOWN;
        return mem;
    }


}
