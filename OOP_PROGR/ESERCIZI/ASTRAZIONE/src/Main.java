public class Main {

    static int[] arr1 = {10,34,2,56,7,67,88,42};
    static int temp;

    //
    public static void main(String a[]){
        for (int i = 1; i < arr1.length; i++) {
            for(int j = i ; j > 0 ; j--){
                if(arr1[j] < arr1[j-1]){
                    temp = arr1[j];
                    arr1[j] = arr1[j-1];
                    arr1[j-1] = temp;
                }
            }
        }
        for(int i:arr1){
            System.out.print(i);
            System.out.print(", ");
        }
    }


    /**
     * SORTING THE ARRAY IN INCREASING ORDER
     * @param a INTEGER ARRAY [ 3,1,2,4]
     * @return ARRAY[1,2,3,4]
     */
    private static int[] doInsertionSort( int[] a){
        for (int i = 0; i < a.length; i++) {
            for (int j = i; j > 0 ; j--) {
                if (a[j] < a[j-1]) swap(a,j);
            }
        }
        return a;  //BAD DECISION!!!
    }

    /**
     * @param a INTEGER ARRAY
     * @param j SWAPPING ARR[J]<-->ARR[J-1]
     */
    private static void swap(int[] a, int j) {    //CAN BE IMPROVED
        int tmp = a[j];
        a[j] = a[j-1];
        a[j-1]=tmp;
    }
}