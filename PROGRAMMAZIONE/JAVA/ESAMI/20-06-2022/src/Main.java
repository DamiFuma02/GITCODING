public class Main {

    public static void main(String[] args) {
	// write your code here
        //System.out.println(Esame.heapCheck( new double[] { 8.5, 4.7, 8.5, 2.8, 4.8, 5.0, 6.3, 1.5, 2.6 } ));
        Node n = new Node('c',2);
        int[] ints = Huffman.charFreq("./src/Pair.java");
        Node node = Huffman.huffmanTree(ints);
        System.out.println(Esame.huffmanCodeSize(node));
        System.out.println(Esame.codeSizeIter(node));

    }
}
