package com.company;

public class Frame {
    private final int depth;
    private final Node node;

    public Frame(Node n, int c){
        depth = c;
        node = n;
    }


    public int getDepth() {
        return depth;
    }

    public Node getNode() {
        return node;
    }
}
