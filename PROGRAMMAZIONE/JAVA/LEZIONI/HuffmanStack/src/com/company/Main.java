package com.company;
import huffman_toolkit.*;
import java.util.Arrays;
public class Main {
    public static String filePath = "files/";

    public static void main(String[] args) {

        int[] arr =  Huffman.charFreq("src/com/company/Huffman.java");
        Node root = Huffman.huffmanTree(arr);
        System.out.println(Huffman.huffmanSize(root));
        System.out.println(Huffman.huffmanSizeIter(root));


        //Huffman.decompress(filePath+"fileOut.txt",filePath+"Huffman.txt");


    }
}
