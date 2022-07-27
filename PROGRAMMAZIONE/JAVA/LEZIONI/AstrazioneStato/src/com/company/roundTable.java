package com.company;

import java.util.ArrayList;

public class roundTable {
    /**
     * NUMERO CAVALIERI RIMASTI
     */
    private  int size;
    /**
     * INDICE DELL ARRAY IN CUI SI TROVA IL CAV CON BROCCA
     */
    private  int jug;
    /**
     * LISTA CON I CAVALIERI
     */
    private int[] cavv;

    // COSTRUTTORE PUBBLICO
    public roundTable(int n){
        size = n;
        jug = 0;
        cavv = new int[2*n-1];
        // INSERIMENTO DEI VALORI ALL'INTERNO DELL'ARRAY
        for (int i =0;i<n;i++){
            cavv[i] = i+1;
        }

    }


    /**
     * @return CAVALIERE CON LA BROCCA
     */
    public int getJug() {
        return cavv[jug];
    }

    /**
     * @return NUMERO CAVALIERI RIMASTI
     */
    public int getSize() {
        return size;
    }

    /**
     * SERVE IL CAVALIERE SUCCESSIVO
     */
    public void serveNeighbour() {     // serve il commensale vicino a sinistra:

        if (size>1){
            // cavv[jug+1] è appena stato servito, perciò esce
            cavv[jug+1] = cavv[jug];
            // cavalieri rimasti diminuiti
            size-=1;
            // indice del jug incrementato
            jug+=1;
        }
    }



    public void passJug() {            // passa la brocca al commensale vicino
        if (size>1){
            // BROCCA PASSATA
            cavv[jug+size] = cavv[jug];
            jug+=1;
            // CHI HA LA BROCCA FINISCE IN FONDO ALLA LISTA
        }
    }




}
