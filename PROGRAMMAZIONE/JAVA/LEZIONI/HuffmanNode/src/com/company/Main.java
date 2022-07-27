package com.company;

// FILE > PROJECT STRUCTURE > ADD LIBRARY > PATH OF HUFFAMN PACKAGE> APPLY
import huffman_toolkit.*;

import java.util.Arrays;


public class Main {
    public static String filePath = "files/";

    public static void main(String[] args) {
        // il peso totale dell'albero è il numero di caratteri presenti nel file, quindi la dimensione in Bytes
        /*Node tree = Huffman.huffmanTree(arr);
        String[] charCodes = Huffman.huffmanCodes(tree);
        System.out.println("FINE");*/

        Node tree = Huffman.compress(filePath+"file.txt",filePath+"fileOut.txt");

        Huffman.decompress(filePath+"fileOut.txt",filePath+"fileDec.txt",tree);



    }
}
