package com.company;

public class Mathematic {
    public static int multiply(int a, int b){
        int i=a;
        while(b>1){
            i+=a;
            b-=1;
        }
        return i;
    }


    /**
     * @param a MOLTIPLICANDO (SOMMA PROGRESSIVA)
     * @param b MOLTIPLICATORE
     * @return RISULTATO
     */
    public static int[][] EgyptMul(int a, int b){
        int x=a;
        int y = b;
        int z=0;

        int[][] MATRIX = new int[10][5];


        int cycleCount = 0;
        do {
            MATRIX[cycleCount][0] = (int)  Math.pow(2, cycleCount);
            MATRIX[cycleCount][1] = x;
            MATRIX[cycleCount][2] = y;
            MATRIX[cycleCount][3] = z;
            MATRIX[cycleCount][4] = x*y + z;
            z = (y%2>0)? z+x : z;
            x = 2*x;
            y = (Integer)y/2;

            cycleCount++;
        }while(y>0);
        return MATRIX;




    }


    public static int sqr(int n){
        int x=0;
        int y=0;
        int z = 1;
        // INVARIANTI: y = x*x   z = 2*x+1     x <= n
        // TERMINANTE: x<n -->
        while (x<n){
            x ++;
            y +=z;
            z+=2;
        }
        return y;


    }


}
