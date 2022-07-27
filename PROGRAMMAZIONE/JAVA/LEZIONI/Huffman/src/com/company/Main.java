package com.company;

// FILE > PROJECT STRUCTURE > ADD LIBRARY > PATH OF HUFFAMN PACKAGE> APPLY
import huffman_toolkit.*;






public class Main {
    public static String filePath = "files/";

    public static void main(String[] args) {
	// write your code here
        //System.out.println(IOTest.copyFile("src/com/company/file.txt", "src/com/company/copia.txt"));
        //int[] arr =  Huffman.charFreq(filePath+"file.txt");
        // { (codAscii,occurrences) , ... , (codAscii,occurrences) }
        //GenSchemeList<Node> tree =  Huffman.createTree(arr);

        OutputTextFile outputFile = new OutputTextFile(filePath+"fileCharOccurrences.txt");

        outputFile.writeTextLine("vyububb");


        /*GenSchemeList<GenSchemeList<Integer>> list = Huffman.charListFreq(arr);

        makeCSV(outputFile,list);*/

        outputFile.close();
    }


    private static void makeCSV(OutputTextFile outputFile, GenSchemeList<GenSchemeList<Integer>> list) {
        outputFile.writeTextLine("char,asciiCode,occurrences");
        while (!list.isNull()){
            GenSchemeList<Integer> pair = list.car();
            String s = pair.toString();
            int code =  pair.car();
            s = (char)code +","+ s;

            outputFile.writeTextLine(s);
            list = list.cdr();
        }
    }




}
