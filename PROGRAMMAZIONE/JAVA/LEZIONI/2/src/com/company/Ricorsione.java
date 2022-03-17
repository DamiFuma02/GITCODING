package com.company;

public class Ricorsione {
    public static int Fibonacci (int n) {
        //sequenza di Fibonacci fino al n-esimo numero
        if (n < 2){
            return 1;
        } else {
            return Fibonacci(n-2) +Fibonacci(n-1);
        }
    }
    //piegare un foglio k volte
    static double s0 = Math.pow(2,1/4) * 100;
    static double s1 = Math.pow(2,-1/4) * 100;
    public static double s (int k) {
        if (k<2) {
            //CASO BASE
            //se k == 0 ritorna s0, altrimenti s1
            return (k == 0) ? s0 : s1;
        } else {
            return s(k-2) / 2;
        }
    }
    //CONVERSIONI DI BASE
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
    public static String parteIntera(String s) {
        int k = s.length()-1;
        if (s.charAt(k) == '.'){
            return s.substring(0,k);
        } else {
            return parteIntera(s.substring(0,k));
        }
    }
    public static String parteDec(String s) {
        if (!hasPoint(s)) return "";
        int k = s.length();
        int l = parteIntera(s).length();
        int j = k -l;
        return s.substring(l+1,k);
    }
    public static char checkSign(String s) {
        if (s.charAt(0) == '+'){
            return '+';
        } else if (s.charAt(0) == '-'){
            return '-';
        } else {
            return 'a';
        }
    }
    public static int nuovaCifra(char c, String insieme, int indice) {
        if (c == insieme.charAt(indice)){
            //CARATTERE TROVATO
            return indice;
        } else {
            return nuovaCifra(c, insieme, indice+1);
        }
    }
    public static int toDec(String alfabeto, String s) {
        //CONVERSIONE DA BASE A DECIMALE
        int k = s.length()-1;
        int base = alfabeto.length();
        if (k == 0) {
            return nuovaCifra(s.charAt(k), alfabeto,0);
        } else {
            return (base * toDec(alfabeto,s.substring(0,k))) +
                    nuovaCifra(s.charAt(k), alfabeto,0);
        }
    }
    public static double repNumber(String s, String alfabeto) {  //s stringa di valori numerici compresi nell'alfabeto
        if (hasPoint(s)) {
            //NUMERO CON VIRGOLA
            double divisore = Math.pow(2, parteDec(s).length());
            if (checkSign(s) == '+'){
                //SEGNO +
                int numeroDecimale = toDec(alfabeto, parteIntera(s)+parteDec(s));
                return numeroDecimale/divisore;

            } else if (checkSign(s) == '-') {
                //SEGNO -
                int numeroDecimale = toDec(alfabeto, parteIntera(s)+parteDec(s));
                return -1*numeroDecimale/divisore;
            } else {
                //SENZA SEGNO
                int numeroDecimale = toDec(alfabeto, s);
                return numeroDecimale/divisore;
            }
        } else {
            //NUMERO SENZA VIRGOLA
            if (checkSign(s) == '+'){
                //SEGNO +
                int numeroDecimale = toDec(alfabeto, parteIntera(s)+parteDec(s));
                return numeroDecimale;

            } else if (checkSign(s) == '-') {
                //SEGNO -
                int numeroDecimale = toDec(alfabeto, parteIntera(s)+parteDec(s));
                return -1*numeroDecimale;
            } else {
                //SENZA SEGNO
                int numeroDecimale = toDec(alfabeto, s);
                return numeroDecimale;
            }
        }
    }
}
