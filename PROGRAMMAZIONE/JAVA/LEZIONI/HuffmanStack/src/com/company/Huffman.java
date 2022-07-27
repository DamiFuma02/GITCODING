package com.company;
import com.company.RecFrame;
import huffman_toolkit.*;
import java.util.PriorityQueue;
import java.util.Stack;
public class Huffman {
    private static final int CHARS = InputTextFile.CHARS;
    public static int[] charFreq(String src){
        int[] freq = new int[CHARS];
        for (int c=0;c<CHARS;c++){ freq[c] = 0;}
        InputTextFile inputFile = new InputTextFile(src);
        while(inputFile.textAvailable()){
            char c = inputFile.readChar();
            freq[c]++;}
        inputFile.close();
        return freq;
    }
    /**
     * @param charFreq ARRAY DI FREQUENZE PER OGNI CARATTERE
     * @return Node huffmanTree
     */
    public static Node huffmanTree(int[] charFreq){
        PriorityQueue<Node> coda = new PriorityQueue<Node>();// CODA VUOTA CHE CONTERRa DEI NODI
        for (int c =0;c<CHARS;c++){
            if (charFreq[c]>0){
                Node n = new Node((char)c,charFreq[c]);
                coda.add(n);
            }}
        while (coda.size()>1){
            // PESCA IL NODO A PRIORITa MAGGIORE E LO RIMUOVE DALLA CODA
            Node l = coda.poll();
            Node r = coda.poll();
            Node tree = new Node(l,r); // COSTRUZIONE ALBERO
            coda.add(tree); } // AGGIUNGE ALLA CODA UN NODO
        return coda.peek();  // ALBERO DI HUFFMAN
    }
    /**
     * @param root albero di huffman
     * @return tabella con i codici di huffamn generati in base alla priorita
     */
    public static String[] huffmanCodesRec(Node root){
        String[] table = new String[CHARS];
        // CODICE DI HUFFMAN INIZIALMENTE VUOTO
        buildTable(root,"",table);
        return table;
    }
    public static String[] huffmanCodes(Node root){
        String[] table = new String[CHARS];
        Frame frame = new Frame(root,"");
        Stack<Frame> frameStack = new Stack<>();
        frameStack.push(frame);
        while (!frameStack.empty()){
            Frame f = frameStack.pop();
            Node n = f.getNode();
            String code = f.getCode();
            if (n.isLeaf()){
                char c = n.symbol();
                table[c] = code;
            } else{
                frameStack.push(new Frame(n.right(), code +"1"));
                frameStack.push(new Frame(n.left(), code +"0"));
            } }
        return table;
    }
    /**
     * @param root NODO
     * @param code CODICE DI HUFFMAN DEGLI SPOSTAMENTI
     * @param table charCodes
     */
    private static void buildTable(Node root,String code, String[] table) {
        if (root.isLeaf()){
            char c = root.symbol();
            table[c] = code;
        } else {
            // 0 = SPOSTAMENTO SX // 1 = SPOSTAMENTO DX
            buildTable(root.left(),code+"0",table);
            buildTable(root.right(),code+"1",table);
        } }
    /**
     * @param src FILE SORGENTE
     * @param dst FILE DESTINAZIONE
     */
    public static void compress(String src, String dst){
        int[] charFreq = charFreq(src);
        Node tree = huffmanTree(charFreq);
        String[] codes = huffmanCodes(tree);
        InputTextFile inFile = new InputTextFile(src);
        OutputTextFile outFile = new OutputTextFile(dst);
        outFile.writeTextLine(""+tree.weight());
        outFile.writeTextLine(flatTree(tree));
        while(inFile.textAvailable()){
            char c = inFile.readChar();
            outFile.writeCode(codes[c]); }
        inFile.close();
        outFile.close();

    }
    /**
     * @param src FILE SORGENTE COMPRESSO
     * @param dst FILE DESTINAZIONE DECOMPRESSO =? FILE SORGENTE DI COMPRESS()
     */
    public static void decompress(String src, String dst){
        InputTextFile inFile = new InputTextFile(src);
        OutputTextFile outFile = new OutputTextFile(dst);
        // NUMERO TOTALE DI CARATTERI CHE DEVONO COMPARIRE NEL FILE OUT

        int numChar = Integer.parseInt(inFile.readTextLine());
        Node tree = restoreTree(inFile);

        String d = inFile.readTextLine();

        for (int i=0;i<numChar;i++){
            Node node = tree;
            do {
                int b = inFile.readBit();
                node = (b == 0)? node.left() : node.right();
            } while(!node.isLeaf());

            outFile.writeChar( node.symbol());
        }
        inFile.close();
        outFile.close();
    }


    /**
     * @param n ALBERO
     * @return CONFIGURAZIONE STRINGA DELL'ALBERO
     */
    public static String flatTreeRec(Node n){
        if (n.isLeaf()){
            char c = n.symbol();
            if (c=='@' || c == '\\'){
                return "\\"+c;
            } else {
                return ""+c;
            }
        } else {
            return "@"+flatTree(n.left())+flatTree(n.right());
        }
    }


    public static String flatTree(Node root){
        Stack<Node> nodeStack = new Stack<>();
        nodeStack.push(root);
        String tree = "";
        while(!nodeStack.empty()){
            Node n = nodeStack.pop();
            if (n.isLeaf()){
                char c = n.symbol();
                String e = (c=='@' || c == '\\')? "\\"+c : ""+c;
                tree = tree + e;
            } else{
                tree = tree + "@";
                nodeStack.push(n.right());
                nodeStack.push(n.left());
            }
        }
        return tree;
    }


    private static Node restoreTreeRec(InputTextFile in){
        char c = in.readChar();
        if (c == '@'){
            Node l = restoreTree(in);
            Node r = restoreTree(in);
            return new Node(l,r);
        } else {
            if (c == '\\') {
                c = in.readChar();
            }
            return new Node(c,0);
        }
    }

    private static Node restoreTree(InputTextFile in){
        Stack<RecFrame> recFrameStack = new Stack<>();
        recFrameStack.push(new RecFrame());
        Node n = null;

        while (!recFrameStack.empty()){
            // PRELEVA MA NON TOGLIE!!!
            RecFrame f = recFrameStack.peek();
            if (f.stato == 0){
                // INZIO DELLA RICORSIONE
                char c = in.readChar(); //carattere letto dal FILE
                if (c == '@'){
                    f.stato = 1; //ASPETTA LA RICROSIONE
                    recFrameStack.push(new RecFrame());
                } else {
                    if (c == '\\'){
                        c = in.readChar();
                    }
                    n = new Node(c,0);
                    recFrameStack.pop(); //RIMUOVE L'OGGETTO APPENA CONTROLLATO
                }
            } else if (f.stato == 1){
                f.l = n;
                f.stato = 2;
                recFrameStack.push(new RecFrame());
            } else  {
                f.r = n;
                n  =new Node(f.l,f.r );
                recFrameStack.pop();
            }
        }
        return n;
    }



    public static int huffmanSize( Node root ) {
        return huffmanSizeRec( root, 0 );
    }
    private static int huffmanSizeRec( Node n, int d ) {
        if ( n.isLeaf() ) {
            return d * n.weight();
        } else {
            return huffmanSizeRec( n.left(), d+1 ) + huffmanSizeRec( n.right(), d+1 );
        }
    }


    public static int huffmanSizeIter(Node root){
        Stack<DepFrame> frameStack = new Stack<>();
        frameStack.push(new DepFrame(root,0));
        int hSize = 0;
        do {
            DepFrame currentFrame = frameStack.pop();
            Node n = currentFrame.getNode();
            int depth = currentFrame.getDepth();
            if (n.isLeaf()){
                hSize = depth * n.weight();
            } else {
                frameStack.push(new DepFrame(n.right(),depth+1));
                frameStack.push(new DepFrame(n.left(),depth+1));
            }
        } while (!frameStack.empty());
        return hSize;
    }
}
