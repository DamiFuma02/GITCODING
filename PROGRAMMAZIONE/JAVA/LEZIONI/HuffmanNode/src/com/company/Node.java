package com.company;

public class Node implements Comparable<Node>  {
    /**
     * SIMBOLO
     */
    private final char sym;
    /**
     * PESO
     */
    private final int wgt;
    /**
     * FIGLIO SX DEL RAMO
     */
    private final Node lft;
    /**
     * FIGLIO DX DEL RAMO
     */
    private final Node rgt;



    public Node(char c, int w){
        sym = c;
        wgt = w;
        lft = null;
        rgt = null;
    }

    public Node(Node l, Node r){
        sym = (char) 0;
        wgt = l.weight() + r.weight();
        lft = l;
        rgt = r;

    }


    @Override
    public int compareTo(Node n) {
        if (weight() < n.weight())  return -1;
        else if (weight() == n.weight()) return 0;
        else return +1;
    }




    /**
     * @return SE IL NODO è UNA FOGLIA O UN RAMO
     */
    public boolean isLeaf(){
        return (lft == null);
    }

    public char symbol(){
        return sym;
    }

    public int weight(){
        return wgt;
    }

    public Node left(){
        return lft;
    }

    public Node right(){
        return rgt;
    }



}
