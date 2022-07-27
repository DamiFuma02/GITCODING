package com.company;

import huffman_toolkit.*;

public class Huffman {

    private static final int CHARS = InputTextFile.CHARS;
    public static int[] charFreq(String src){
        int[] freq = new int[CHARS];
        for (int c=0;c<CHARS;c++){
            freq[c] = 0;
        }
        InputTextFile inputFile = new InputTextFile(src);
        while(inputFile.textAvailable()){
            char c = inputFile.readChar();
            freq[c]++;
        }
        inputFile.close();
        return freq;
    }

    public static GenSchemeList<GenSchemeList<Integer>> charListFreq(int[] arr){
        GenSchemeList<GenSchemeList<Integer>> charOcc = new GenSchemeList<>();
        for (int i=0;i<arr.length;i++){
            if (arr[i] > 0){
                GenSchemeList<Integer> l = new GenSchemeList<>();
                l = l.cons(arr[i]).cons(i);
                charOcc = charOcc.reverse().cons(l).reverse();
            }
        }
        return charOcc;
    }

    public static GenSchemeList<Node> createTree(int[] charFreq){
        GenSchemeList<Node> tree = new GenSchemeList<>();
        for (int i=0;i<charFreq.length;i++){
            if(charFreq[i]>0){
                // AGGIUNGE ALLA LISTA UN NODO
                tree = tree.reverse().cons(
                        new Node(
                                (char) i,charFreq[i]
                        )
                ).reverse();
            }
        }
        return tree;
    }




}
