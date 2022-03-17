package com.company;

import java.text.Bidi;
import java.util.ArrayList;
import java.util.List;

public class Mahnattan {
    public static int BiDimensionale (int y, int x) {
        if (y == 0 || x == 0) {
            //una delle coordinate è nulla perciò il percorso disponibile è 1 solo
            return 1;
        } else {
            return  BiDimensionale(y-1,x) +   //procede verso il basso
                    BiDimensionale(y,x-1);    //procede verso destra
        }
    }
    public static int TriDimensionale(int y, int x, int z) {
        if (y==0) {
            return BiDimensionale(x,z);
        } else if (x == 0) {
            return BiDimensionale(y, z);
        } else if (z == 0) {
            return BiDimensionale(y,x);
        } else {
            return  TriDimensionale(y-1,x,z) +   //VERSO IL BASSO
                    TriDimensionale(y,x-1,z) +   //VERSO DESTRA
                    TriDimensionale(y,x,z-1);    //VERSO 3 DIMENSIONE
        }
    }
    //ESERCIZI PREPARAZIONE ESAME SCHEME
    public static int[] mh(int y, int x) {
        List<Integer> lista = new ArrayList<>();

        if (y == 0 || x == 0) {
            return lista.add(2);
        }
        return lista;
    }
    //PASSO PRECEDENTE VERSO BASSO
    public static int md(int y, int x) {
        return 0;
    }
    //PASSO PRECEDENTE VERSO DESTRA
    public static int mr(int y, int x) {
        return 0;
    }
}
