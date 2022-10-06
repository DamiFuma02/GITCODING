public class Abstraction {
    private static void DoInsertionSort(int[] a){
        int tmp;
        for (int i = 0; i < a.length; i++) {
            for (int j = i; j > 0 ; j--) {
                if (a[j] < a[j-1]) swap(a,j);
            }
        }
    }

    private static void swap(int[] a, int j) {
    }
}
