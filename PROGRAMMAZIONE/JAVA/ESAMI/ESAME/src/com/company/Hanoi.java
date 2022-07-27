package com.company;


import java.util.Stack;

public class Hanoi {
    public static String hanoi( Towers hts, int d ) { // hts: stato iniziale gioco
        // d: posizione finale torre
        return hanoiIter( hts, d );
    }


    public static String hanoiIter( Towers hts, int d ) {
        int n = hts.height();
        Stack<int[]> stk = new Stack<int[]>();
        stk.push( new int[]{ n, d } );
        while (!stk.empty()){
            // PRELEVA I DATI DALLO STACK
            int[] f = stk.pop();
            n = f[0];
            d = f[1];
            if (n>0){
                if (hts.site(n) == d){
                    stk.push(new int[] {n-1,d});
                } else {
                    int t = hts.transit(n,d);
                    // LE 3 RIGHE DI AGGIUNTA SONO AL ROVESCIO PERCHE STACK: LastInFirstOut
                    stk.push(new int[]{n-1,d});
                    stk.push(new int[]{-n,d});  // MUOVE IL DISCO
                    stk.push(new int[]{n-1,t});
                }
            } else if (n<0){
                hts.move(-n,d);
            }
        }
        return hts.moves();
    }
}
