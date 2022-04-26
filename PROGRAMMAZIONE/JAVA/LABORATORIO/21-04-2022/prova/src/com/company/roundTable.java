package com.company;

public class roundTable {
    // VARIABILI DI ISTANZA
    private final int size;   // numero di cavalieri totale
    private final int jug;  // id del cavaliere con la brocca
    private final IntSchemeList head;  //lista dei cavalieri successivi a quello con la brocca
    private final IntSchemeList tail; // lista dei cavalieri che hanno già passato un giro

    // COSTRUTTORE PUBBLICO
    public roundTable(int n){
        size = n;
        jug = 1;
        head = IntSchemeList.creaListaRange(2,n);
        tail = IntSchemeList.NULL_INTLIST;
    }

    private roundTable(int n, int j, IntSchemeList h, IntSchemeList t){
        size = n;
        jug = j;
        head = h;
        tail = t;
    }

    public int getJug() {
        return jug;
    }

    public int getSize() {
        return size;
    }

    public roundTable serveNeighbour() {     // serve il commensale vicino a sinistra:
        // il commensale servito lascia la tavola
        if (size <= 2) {
            return this;
        }
        else if (head.listLength() < 2){
            roundTable rt =  new roundTable(size, jug, head.append(tail.reverse()), IntSchemeList.NULL_INTLIST);
            return rt.serveNeighbour();
        } else {
            return new roundTable(size-1,jug, head.cdr().cdr(), tail.cons(jug).cons(head.car()));
        }
    }

    public IntSchemeList servingKnights(){
        if (tail.isNull()) return head.cons(jug);
        return tail.reverse();
    }

    public roundTable passJug() {            // passa la brocca al commensale vicino
        // (a sinistra)
        if (size <= 2) return this;
        else{
            return new roundTable(size, head.car(),head.cdr().append(tail.reverse()),IntSchemeList.NULL_INTLIST);
        }
    }




    public String  getTail() {
        return tail.reverse().ListToString();
    }

    public String getHead() {
        return head.ListToString();
    }
}
