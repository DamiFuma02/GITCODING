package com.company;

public class DepFrame {
    private int depth;
    private Node n;
    public DepFrame(Node root, int d){
        n = root;
        depth = d;
    }

    public int getDepth() {
        return depth;
    }

    public Node getNode() {
        return n;
    }
}
