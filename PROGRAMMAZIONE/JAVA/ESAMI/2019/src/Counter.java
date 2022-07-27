public class Counter {
    private long c;
    public Counter(){
        c=0;
    }
    public void incr(){
        c+=1;
    }
    public long count(){return c;}
    public void add(long n){
        if (n<0)return;
        c+=n;
    }
    public void reset(){c=0;}
    public String toString(){
        return ""+c;
    }
}
