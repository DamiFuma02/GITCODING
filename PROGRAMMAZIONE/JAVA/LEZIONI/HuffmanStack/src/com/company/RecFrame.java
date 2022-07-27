package com.company;

public class RecFrame {
    /**
     * stato = {0,1,2}
     */
    public int stato ;

    public Node l;
    public Node r;

    public RecFrame(){
        stato = 0;
        l = null;
        r = null;
    }


    public RecFrame(int s, Node lft, Node rgt){
        stato = s;
        l = lft;
        r = rgt;
    }

}
