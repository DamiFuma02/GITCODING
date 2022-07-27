package com.company;
import huffman_toolkit.*;
import java.util.Arrays;
public class Main {
    public static String filePath = "files/";

    public static void main(String[] args) {

        Huffman.compress("src/com/company/Main.java",filePath+"fileOut.txt");

        Huffman.decompress(filePath+"fileOut.txt",filePath+"fileDec.txt");

    }
}
