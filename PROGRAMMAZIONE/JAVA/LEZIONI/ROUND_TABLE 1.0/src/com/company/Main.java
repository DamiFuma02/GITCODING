package com.company;

public class Main {

    public static void main(String[] args) {
        // GIOCO DEI CAVALIERI
        System.out.println(ultimoCavaliere(12));
    }
    public static int ultimoCavaliere(int n){   //n : cavalieri iniziali
        Tavolo tavolaRotonda = new Tavolo(n);
        // SITUAZIONE INIZIALE IL CAV 1 HA LA BROCCA
        while (!tavolaRotonda.giocoFinito()){    // or tavolaRotonda.numeroCavalieri() > 1
            tavolaRotonda = tavolaRotonda.dopoUscita();
            // METODI ALTERNATIVI
            //tavolaRotonda = tavolaRotonda.serviSidro();
            //tavolaRotonda = tavolaRotonda.passaBrocca();
        }
        // RIMASTO UN CAVALIERE
        return tavolaRotonda.chiHaLaBrocca();
    }
}
