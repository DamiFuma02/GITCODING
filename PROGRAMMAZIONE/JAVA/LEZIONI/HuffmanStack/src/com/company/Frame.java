package com.company;

public class Frame {
    private final String code;
    private final Node node;

    public Frame(Node n, String c){
        code = c;
        node = n;
    }


    public String getCode() {
        return code;
    }

    public Node getNode() {
        return node;
    }
}
