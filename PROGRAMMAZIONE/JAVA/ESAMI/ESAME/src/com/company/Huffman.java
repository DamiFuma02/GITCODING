package com.company;


import java.util.Stack;

public class Huffman {
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
        Stack<Frame> frameStack = new Stack<>();
        frameStack.push(new Frame(root,0));
        int hSize = 0;
        do {
            Frame currentFrame = frameStack.pop();
            Node n = currentFrame.getNode();
            int depth = currentFrame.getDepth();
            if (n.isLeaf()){
                hSize = depth * n.weight();
            } else {
                frameStack.push(new Frame(n.right(),depth+1));
                frameStack.push(new Frame(n.left(),depth+1));
            }
        } while (!frameStack.empty());
        return hSize;
    }





}
