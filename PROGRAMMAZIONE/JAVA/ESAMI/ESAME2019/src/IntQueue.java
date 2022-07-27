

public class IntQueue {
    // VARIABILI DI ISTANZA
    private int[] elements;
    private int size;
    private int j;



    public IntQueue(int s){
        j=0;
        size = 0;
        elements = new int[s];
    }



    public void add (int n){
        if (size == elements.length) return;
        elements[(j+size)%elements.length] = n;
        size+=1;
    }


    public int size(){
        return size;
    }


    public int peek(){
        return elements[0];
    }


    public int poll(){
        int e = elements[j];
        j = (j+1)%elements.length;
        size-=1;
        return e;
    }










}
