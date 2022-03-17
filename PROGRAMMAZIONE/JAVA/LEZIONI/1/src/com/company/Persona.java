package com.company;
//classe PERSONA con differenti attributi e azioni
//i dati verranno prelevati dal codice main
public class Persona  {
    //COSTRUTTORE OGGETTO PERSONA
    private String nome;
    String cognome;
    int eta;
    Persona () {
        nome = "CIAO";
        cognome = "MANDI";
        eta = 23;
    }

    void saluta() {
        System.out.println("Ciao mi chiamo "+nome);
    }

}
