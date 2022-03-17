package com.company;
//introduzione alla programmazione a oggetti  OOP
public class Main {

    public static void main(String[] args) {
        Persona sindaco = new Persona();
        sindaco.saluta();
        //System.out.println(calcolaArea(3.545,5.3));
    }
    //calcolo della superficie totale del cilindro
    // 2*pi*r*(r+h)
    //static = procedura che rimane in memoria durante l'esecuzione
    public static double calcolaArea(double r, double h){
        double piGreco = Math.PI;
        return(2 * piGreco * r * (r+h));

    }
}
