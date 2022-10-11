import java.util.Random;

public class Main {
    public static void main(String[] args) {
        System.out.println("O(n*logn)");
        Random rd = new Random(); // creating Random object
        int[] arr = new int[100000];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = rd.nextInt(1000); // storing random integers in an array
        }
        long start = System.currentTimeMillis();
        mergeSort(arr);
        long end = System.currentTimeMillis();
        float sec = (end - start) / 1000F;
        System.out.println("MERGESORT CON ARRAYS. Tempo Trascorso "+sec + " seconds");
        /*for (int i = 0; i < arr.length; i++) {

            System.out.print(arr[i]+" "); // printing each array element
        }*/

        start = System.currentTimeMillis();
        Abstraction ab = new Abstraction(arr);
        ab.mergeSort(0, arr.length-1);
        end = System.currentTimeMillis();
        sec = (end - start) / 1000F;
        System.out.println("MERGESORT OTTIMIZZATO . Tempo Trascorso "+sec + " seconds");


    }

    public static void mergeSort(int[] inputArray){
        int arrLength = inputArray.length;
        if (arrLength < 2){
            return; // THE ARRAY IS ALREADY SORTED BECAUSE IT HAS 1 ELEMENT
        }
        int midIndex = arrLength/2;
        // if arrLength is odd the rigthHalf will be grater than the left one
        int[] leftHalf = new int[midIndex];
        int[] rightHalf = new int[arrLength-midIndex];

        // LEFTHALF = INPUTARR[0,MIDINDEX]
        for (int i = 0; i < midIndex; i++) {
            leftHalf[i]= inputArray[i];
        }
        // RIGHTHALF = INPUTARR[MIDINDEX,ARRLENGTH]
        for (int i = midIndex; i < arrLength; i++) {
            rightHalf[i-midIndex]= inputArray[i];
        }

        // MERGE SORT THE 2 ARRAYS
        mergeSort(leftHalf);
        mergeSort(rightHalf);

        mergeArrays(inputArray,leftHalf,rightHalf);

    }

    private static void mergeArrays(int[] inputArray, int[] leftHalf, int[] rightHalf) {
        int leftSize = leftHalf.length;
        int rightSize = rightHalf.length;
        // 1: BOTH OF LEFT AND RIGHT ARE SORTED
        // 2: CHECK THE ELEMENTs OF BOTH ARRAYS
        // 3: WRITE THE SMALLER IN THE INPUT ARRAY
        // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
        //     WHERE THERE WAS THE SMALLER VALUE
        // 5: INCREMENT THE COUNTER OF THE INPUTARRAY

        // SEPARATE INDEX FOR EACH ARRAY
        int leftIndex = 0, rightIndex = 0 , inputIndex = 0;
        while (leftIndex<leftSize && rightIndex < rightSize) {
            // 2: CHECK THE ELEMENTs OF BOTH ARRAYS
            if (leftHalf[leftIndex] <= rightHalf[rightIndex]){
                // 3: WRITE THE SMALLER IN THE INPUT ARRAY
                inputArray[inputIndex] = leftHalf[leftIndex];
                // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
                leftIndex++;
            } else {
                // 3: WRITE THE SMALLER IN THE INPUT ARRAY
                inputArray[inputIndex] = rightHalf[rightIndex];
                // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
                rightIndex++;
            }
            // 5: INCREMENT THE COUNTER OF THE INPUTARRAY
            inputIndex++;
        }
        // ONE OF THE HALFS HAS FINISHED THE ELEMENTS
        // BUT WE DON'T KNOW WHICH

        while(leftIndex<leftSize){
            inputArray[inputIndex] = leftHalf[leftIndex];
            leftIndex++;
            inputIndex++;
        }

        while(rightIndex < rightSize) {
            inputArray[inputIndex] = rightHalf[rightIndex];
            rightIndex++;
            inputIndex++;
        }


        // NOW THE INPUTARRAY IS SORTED

    }
}