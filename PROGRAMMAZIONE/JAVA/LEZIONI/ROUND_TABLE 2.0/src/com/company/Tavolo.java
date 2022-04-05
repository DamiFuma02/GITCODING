package com.company;

public class Tavolo extends IntSchemeList{
    private final int numCav;   // numero di cavalieri
    private final int cavConBrocca;   // numero del cavalieri con la brocca
    private final IntSchemeList head;   // lista di cavalieri successivi numerati
    private final IntSchemeList tail;     // lista rovesciata dei cavalieri rimanenti

    // COSTRUTTORE PUBBLICO
    public Tavolo(int n){
        numCav = n;
        cavConBrocca = 1;
        head = creaListaRange(2,n);
        tail = IntSchemeList.NULL_INTLIST;
    }
    // COSTRUTTORE PRIVATO DI SUPPORTO
    private Tavolo(int n, int j, IntSchemeList h, IntSchemeList t){
        numCav = n;
        cavConBrocca = j;
        head = h;
        tail = t;
    }

    public int numeroCavalieri(){
        return numCav;
    }

    public int chiHaLaBrocca(){
        return cavConBrocca;
    }

    public Tavolo serviSidro(){
        if (numCav < 2){
            return this;
        } if (head.isNull()){
            IntSchemeList rev = tail.reverse();
            return new Tavolo(numCav-1,cavConBrocca,rev.cdr(),IntSchemeList.NULL_INTLIST);
        } else {
            return new Tavolo(numCav-1,cavConBrocca,head.cdr(),tail);
        }
    }

    public Tavolo passaBrocca(){
        if (numCav < 2) return this;
        if (head.isNull()){
            IntSchemeList rev = tail.cons(cavConBrocca).reverse();
            return new Tavolo(numCav,rev.car(),rev.cdr(),IntSchemeList.NULL_INTLIST);
        } else {
            return new Tavolo(numCav,head.car(),head.cdr(),tail.cons(cavConBrocca));
        }
    }



}
