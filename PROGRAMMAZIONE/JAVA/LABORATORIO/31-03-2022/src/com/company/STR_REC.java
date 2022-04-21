package com.company;

import java.security.PublicKey;

// CLASSE PER LA CONVERSIONE DEL FILE "recursion_strings.scm
public class STR_REC {
    // DIFFERENZA TRA I CODICI ASCII DELLE MINUSCOLE E MAIUSCOLE
    private int displacement = (int)'a'-(int)'A';  // = 32
    private int pos_a = (int)'a';
    private int pos_z = (int)'z';
    private int pos_A = (int)'A';
    private int pos_Z = (int)'Z';
    // CONVERTE LA STRINGA IN LETTERA MAIUSCOLA
    public String word_uppercase(String word){
        int l = word.length();
        String msg = "";
        for (int i=0; i<l; i++) {
            // se la lettera i-esima è MINUSCOLA si converte in MAIUSCOLA
            char currentChar = word.charAt(i);
            int asciiCode =(int)currentChar;
            if (asciiCode >= pos_a && asciiCode <= pos_z ){
                msg = msg+lowerToUpper(currentChar);
            } else {
                msg = msg+currentChar;
            }
        }
        return ""+msg;
    }


    public String word_lowercase(String word){
        int l = word.length();
        String msg = "";
        for (int i=0; i<l; i++) {
            // se la lettera i-esima è MINUSCOLA si converte in MAIUSCOLA
            char currentChar = word.charAt(i);
            int asciiCode =(int)currentChar;
            if (asciiCode >= pos_A && asciiCode <= pos_Z ){
                msg = msg+upperToLower(currentChar);
            } else {
                msg = msg+currentChar;
            }
        }
        return ""+msg;
    }

    // CONVERTE IL CARATTERE IN MAIUSCOLO
    private char lowerToUpper(char c){
        int ascii = (int)c;
        ascii = ascii - displacement;
        return (char)ascii;
    }
    // CONVERTE IL CARATTERE IN MINUSCOLO
    private char upperToLower(char c){
        int ascii = (int)c;
        ascii = ascii + displacement;
        return (char)ascii;
    }

    // COMPLEMENTO A 1 = SCAMBIA 1 CON 0 IN UNA STRINGA BINARIA

    private char bit_Complement(char c){
        return (c=='0')? '1':'0';
    }

    public String ones_Complement(String word){
        int l = word.length();
        String msg = "";
        for (int i = 0; i<l; i++){
            char currentChar = word.charAt(i);
            msg = msg+bit_Complement(currentChar);
        }
        return ""+msg;
    }

    // COMPLEMENTO A 2 CON RIUTILIZZO COMPLEMENTO A 1
    public String two_Complement(String word){
        int l = word.length()-1;
        if (l==0){
            return word;
        }
        if (word.charAt(l)=='0'){
            return two_Complement(word.substring(0,l))+"0";
        } else {
            return ones_Complement(word.substring(0,l))+"1";
        }

    }

    // BIN SUCC = BIN + 1
    public String binSucc(String word){
        int l = word.length()-1;
        if (l==0){
            return (word == "0")? "1":"10";
        } else {
            char lsb = word.charAt(l);
            String pre = word.substring(0,l);
            if (lsb == '0') return pre+"1";
            else return binSucc(pre)+"0";
        }
    }

    // TRUE se ones PARI
    public boolean parity_check(String word){
        int l = word.length();
        int ones = 0;   //numero di 1 in word
        for (int i=0;i<l;i++){
            if (word.charAt(i)=='1')ones++;
        }
        return (ones%2==0);
    }
    // QUANTE VOLTE LA STRINGA TEXT SI RIPETE IN WORD
    public int occurrences(String word, String text){
        int tL = text.length();
        if (tL>word.length())return 0;
        if (word.substring(0,tL).equals(text) ) return 1+occurrences(word.substring(tL),text);
        return occurrences(word.substring(tL),text);
    }
    // SOSTITUISCE WORD CON SUBS IN OGNI OCCORRENZA NELLA PAROLA TEXT
    public String replacement(String word,String subs, String text){
        int wL = word.length();
        if (wL>text.length()) return text;   // NON CAMBIA NULLA
        if (text.substring(0,wL).equals(word)) return subs+replacement(word,subs,text.substring(wL));
        return text.charAt(0)+replacement(word,subs,text.substring(1));
    }




}
