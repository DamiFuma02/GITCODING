package com.company;

public class Giugno {
    public static int llis(double[] arr){
        return llisRec(arr,0,0);
    }

    private static int llisRec(double[] arr, int i, double t) {
        if (i==arr.length){
            return 0;
        } else if(arr[i]<=t){
            return llisRec(arr,i+1,t);
        } else {
            return Math.max(
                    1+llisRec(arr,i+1,arr[i]),
                    llisRec(arr,i+1,t)
            );
        }
    }


    public static int llmds(double[] s){
        //return llmdMem(s);
        return llmdsRec(s,0,0);
    }

    private static int llmdsRec(double[] s, int i, double t) {
        if (i == s.length) return 0;
        if (t==0 || (0.5*t<=s[i] && s[i]< t)){
            return Math.max(
                    1+llmdsRec(s,i+1,s[i]),
                    llmdsRec(s,i+1,t)
            );
        } else {
            return llmdsRec(s,i+1,t);
        }
    }


    private static int UNKNOWN = -1;
    public static int llmdMem(double[]s){
        int n = s.length;
        int[][] mem = new int[n+1][n+1];
        // INIZIALIZZAZIONE MATRICE CON VALORI SCONOSCIUTI
        for (int r=0;r<=n;r++){
            for (int c=0;c<=n;c++){
                mem[r][c] = UNKNOWN;
            }
        }
        return llmdMemRec(s,0,0,mem);


    }

    /**
     * @param s ARRAY
     * @param i POSIZIONE DI RICERCA
     * @param j POSIZIONE DELL'ELEMENTO DA CONFRONTARE NELL'ARRAY
     * @return LUNGHEZZA
     */
    private static int llmdMemRec(double[] s, int i, int j, int[][]mem) {
        int n = s.length;
        double t = (j==n)? 0 : s[j];

        if (mem[i][j] == UNKNOWN) {
            if (i == n) mem[i][j] = 0;
            else if (t == 0 || (0.5 * t <= s[i]) && (s[i] < t)) {
                mem[i][j] = Math.max(
                        1 + llmdMemRec(s, i + 1, i, mem),
                        llmdMemRec(s, i + 1, j, mem)
                );
            } else {
                mem[i][j] = llmdMemRec(s, i + 1, j, mem);
            }
        }
        return mem[i][j];
    }


    /**
     * @param x
     * @param y : 1 <= x --- y <= z
     * @param z
     * @return DINAMYC PROGRAMMING
     */
    public static long recDP(int x, int y, int z){
        long[][] mem = new long[x+1][z+1];
        for (int r=1;r<=x;r++){
            for (int c=z;c>=y;c--){
                if ((r==1) || (c==z)){   // CASO BASE
                    mem[r][c] = 1;
                } else {
                    mem[r][c] = mem[r-1][c] + (r*mem[r][c+1]);
                }

            }
        }

        return mem[x][y];

    }















}
