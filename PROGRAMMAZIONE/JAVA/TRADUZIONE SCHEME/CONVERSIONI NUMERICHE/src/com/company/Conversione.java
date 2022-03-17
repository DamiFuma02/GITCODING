package com.company;

public class Conversione {
    //CONVERSIONI DI BASE
    //PROGRAMMA CONVERTITO DA SCHEME
    //true se la stringa contiene '.'
    public static boolean hasPoint(String s) {
        int k = s.length()-1;
        if (k == 0) {
            //ultimo carattere della stringa
            return false;
        }
        if (s.substring(0,1).equals(".")) {
            return true;
        } else {
            return hasPoint(s.substring(1));
        }

    }
    //restituisce la stringa prima di '.'
    public static String parteIntera(String s) {
        int k = s.length()-1;
        if (s.charAt(k)=='.'){
            return s.substring(0,k);
        } else {
            return parteIntera(s.substring(0,k));
        }
    }
    //restituisce la stringa dopo di '.'
    public static String parteDec(String s) {
        int k = s.length();
        if (k==0) return "";
        if (s.charAt(0) == '.') {
            return s.substring(1);
        } else {
            return parteDec(s.substring(1));
        }
    }
    //restituisce il valore numerico del simbolo appartenente all'alfabeto
    public static int nuovaCifra(char c, String insieme, int indice) {
        if(indice >= insieme.length()) return -1;
        if (c == insieme.charAt(indice)){
            //CARATTERE TROVATO
            return indice;
        } else {
            return nuovaCifra(c, insieme, indice+1);
        }
    }
    //converte una stringa in qualsiasi alfabeto in numero decimale
    public static int toDec(String alfabeto, String s) {
        //CONVERSIONE DA BASE A DECIMALE
        int k = s.length()-1;
        int base = alfabeto.length();
        int cifra = nuovaCifra(s.charAt(k), alfabeto,0);
        if(cifra == -1) {
            return 0;
        }
        if (k == 0) {
            return cifra;
        } else {
            return (base * toDec(alfabeto,s.substring(0,k))) +
                    cifra;
        }
    }
    //metodo chiamato dall'utente
    public static double binRep(String s) {
        return repNumber("01", s);
    }
    public static double repNumber(String alfabeto, String s) {  //s stringa di valori numerici compresi nell'alfabeto
        char primoCarattere = s.charAt(0);
        System.out.println(primoCarattere);
        int base = alfabeto.length();
        int numeroDecimale;
        String s2;
        if (hasPoint(s)) {
            //NUMERO CON VIRGOLA
            System.out.println("CON VIRGOLA");
            double divisore = Math.pow(base, parteDec(s).length());
            switch (primoCarattere) {
                case '+':
                    s2 = s.substring(1);
                    System.out.println(s2);
                    numeroDecimale = toDec(alfabeto,parteIntera(s2)+parteDec(s2));
                    System.out.println(numeroDecimale);
                    return  numeroDecimale/divisore;
                case '-':
                    s2 = s.substring(1);
                    System.out.println(s2);
                    numeroDecimale = toDec(alfabeto,parteIntera(s2)+parteDec(s2));
                    return  -1*numeroDecimale/divisore;
                default:
                    numeroDecimale = toDec(alfabeto,parteIntera(s)+parteDec(s));
                    return  numeroDecimale/divisore;

            }
        } else {
            //NUMERO SENZA VIRGOLA

            switch (primoCarattere) {
                case '+':
                    s2 = s.substring(1);
                    System.out.println(s2);
                    numeroDecimale = toDec(alfabeto,s2);
                    return  numeroDecimale;
                case '-':
                    s2 = s.substring(1);
                    System.out.println(s2);
                    numeroDecimale = toDec(alfabeto,s2);
                    return  -1*numeroDecimale;
                default:
                    numeroDecimale = toDec(alfabeto,s);
                    return  numeroDecimale;

            }
        }
    }
}
