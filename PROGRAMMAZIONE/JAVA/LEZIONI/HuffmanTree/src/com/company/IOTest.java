package com.company;

import huffman_toolkit.*;

public class IOTest {
    public static int copyFile(String src, String dst){
        InputTextFile inputFile = new InputTextFile(src);
        OutputTextFile outputFile = new OutputTextFile(dst);
        int count = 0;

        while(inputFile.textAvailable()){
            String line = inputFile.readTextLine();
            outputFile.writeTextLine(line);
            count++;
        }


        inputFile.close();
        outputFile.close();
        return count;
    }
}
