public class PairStack {
    private GenSchemeList<Pair> pairs;

    public PairStack(){
        pairs = new GenSchemeList<>();
    }

    public boolean empty(){
        return pairs.isNull();
    }

    public void push(Pair p){
        pairs = pairs.cons(p);
    }

    public Pair peek(){
        return pairs.car();
    }

    public Pair pop(){
        Pair p = pairs.car();
        pairs = pairs.cdr();
        return p;
    }


}
