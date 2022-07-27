package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        System.out.println(symmetricalMatrix(new double[][] {{0.1, 0.4, 0.6}, {0.4, 0.2, 0.5}, {0.6, 0.5, 0.3}} ));

    }


    public static boolean symmetricalMatrix(double[][] matrix){
        int n = matrix.length;
        if (n != matrix[0].length) return false;
        for (int i=0;i<n;i++){
            for (int j=0;j<n;j++){
                if (matrix[i][j] != matrix[j][i] ) return false;
            }
        }

        return true;
    }
}
