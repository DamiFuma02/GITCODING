

public class roundTable {
    private final int size;
    private final int jug;
    private IntSchemeList head;
    private IntSchemeList tail;

    /*
    * COSTRUTTORE PUBBLICO
    */
    public roundTable(int n) {
        size = n;
        jug = 1;
        head = IntSchemeList.creaListaRange(1, n);
        tail = IntSchemeList.NULL_INTLIST;
    }

    // COSTRUTTORE PRIVATO DI SUPPORTO
    private roundTable(int n, int j, IntSchemeList h, IntSchemeList t){
        size = n;
        jug = j;
        head = h;
        tail = t;
    }

    public int numberOfKnights(){
        return size;
    }

    public int cavConBrocca(){return jug;}

    public roundTable serveNeighbour(){
        if (size < 2) return this;
        if (head.isNull()){
            IntSchemeList rev = tail.reverse();
            return new roundTable(size-1, jug, rev.cdr(), IntSchemeList.NULL_INTLIST);
        } else {
            return new roundTable(size-1, jug, head.cdr(), tail);
        }
    }

    
    public roundTable passJug(){
        if (size < 2)return this;
        if (head.isNull()){
            IntSchemeList rev = (tail.cons(jug)).reverse();
            return new roundTable(size, rev.car(),rev.cdr(),IntSchemeList.NULL_INTLIST);
        } else {                               // (**)
            return new roundTable( size, head.car(), head.cdr(), tail.cons(jug) );
        }
    }
    

}
