public class Abstraction {
    private int[] inputArray;
    private int[] copyArray;
    private int inputLength;


    public Abstraction(int[] ar){
        inputArray = ar;
        inputLength = inputArray.length;
        copyArray = new int[inputLength];
    }

    public void mergeSort(int startIndex,int endIndex){
        if (startIndex < endIndex){
            int middleIndex = startIndex+ (endIndex-startIndex)/2 ;
            // if endIndex is ODD --> (endIndex-1)/2 is an INTEGER

            // RECURSIVE CALL DIVIDING THE ARRAY IN TWO HALFS
            mergeSort(startIndex,middleIndex);  //LEFT HALF
            mergeSort(middleIndex+1,endIndex);  //RIGHT HALF

            // 1: BOTH OF LEFT AND RIGHT ARE SORTED
            // 2: CHECK THE ELEMENTs OF BOTH ARRAYS
            // 3: WRITE THE SMALLER IN THE INPUT ARRAY
            // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
            //     WHERE THERE WAS THE SMALLER VALUE
            // 5: INCREMENT THE COUNTER OF THE INPUTARRAY

            mergeArrs(startIndex,middleIndex,endIndex);
        }
        // startIndex == endIndex --> 1 VALUE, ALREADY ORDERED
    }

    private void mergeArrs(int startIndex, int middleIndex, int endIndex) {
        int inputIndex = startIndex;
        int leftIndex = startIndex;
        int rightIndex = middleIndex+1;

        // COPY OF THE PORTION OF THE INPUT ARRAY WE WANT TO SORT AND MERGE
        for (int i = startIndex; i <= endIndex; i++) {
            copyArray[i] = inputArray[i];
        }


        while(leftIndex<=middleIndex && rightIndex<=endIndex){
            if (copyArray[leftIndex] <= copyArray[rightIndex]){
                inputArray[inputIndex] = copyArray[leftIndex];
                leftIndex++;
            } else {
                inputArray[inputIndex] = copyArray[rightIndex];
                rightIndex++;
            }
            inputIndex++;
        }

        // QUESTA CONDIZIONE SI VERIFICA QUANDO L'INDICE RIGHT È TERMINATO
        // E DI CONSEGUENZA TUTTI GLI ELEMENTI DEL RIGHT SONO STATI INSERITI IN INPUT ARRAY
        // CHE PERÒ NON POSSIEDE ANCORA GLI ELEMENTI DELLA METÀ SX IN QUANTO
        // LE LORO POSIZIONI NELL'INPUT ARRAY SONO STATE OCCUPATE DAI VALORI DELLA METÀ DX
        while (leftIndex <= middleIndex) {
            inputArray[inputIndex] = copyArray[leftIndex];
            inputIndex++;
            leftIndex++;
        }
    }


}
