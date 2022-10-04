public class Main {
    public static void main(String a[]){
        int[] y = {45,23,11,89,77,98,4,28,65,43};
        Ripulito mms = new Ripulito();
        mms.s(y);
        for(int i:y){
            System.out.print(i);
            System.out.print(" ");
        }
    }
}